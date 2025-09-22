class MealyMachine:
    def __init__(self, states, start_state, end_state, transitions):
        """
        states: list of state names
        start_state: initial state
        end_state: terminal state
        transitions: dict in form {(state, input): (next_state, output)}
        """
        self.states = states
        self.start_state = start_state
        self.end_state = end_state
        self.transitions = transitions
        self.state = start_state

    def reset(self):
        self.state = self.start_state

    def process(self, input_string):
        output = []
        self.state = self.start_state

        for symbol in input_string:
            key = (self.state, symbol)
            if key not in self.transitions:
                raise ValueError(f"No transition defined for state {self.state} on input '{symbol}'")

            next_state, out_symbol = self.transitions[key]
            output.append(out_symbol)
            self.state = next_state

        if self.state != self.end_state:
            raise ValueError(f"Did not end in end_state")

        return "".join(output)


if __name__ == "__main__":
    # Example with three states: S0 -> S1 -> S2 (end)
    states = ["S0", "S1", "S2"]
    start_state = "S0"
    end_state = "S2"

    transitions = {
        ("S0", "h"): ("S0", "L"),
        ("S0", "V"): ("S0", "n"),
        ("S0", "N"): ("S0", "("),

        ("S0", "A"): ("S1", "m"),
        ("S0", "D"): ("S1", "f"),
        ("S0", "I"): ("S1", "n"),

        ("S1", "A"): ("S1", "x"),
        ("S1", "N"): ("S1", "n"),

        ("S1", "V"): ("S0", "f"),
        ("S1", "C"): ("S0", "."),
        ("S1", "D"): ("S0", "("),

        ("S1", "h"): ("S2", ")"),

        ("S2", "I"): ("S2", ")"),

        ("S2", "C"): ("S0", "("),
    }

    machine = MealyMachine(states, start_state, end_state, transitions)

    input_string_1 = "hDACDDDAh"
    input_string_2 = "NhANChDACAVNVDAhIChDACDDDAhIChDACDAh"
    input_string_3 = "NhANCAhChDACDAhChDACDDDDDAhII"
    input_string_4 = "NhACADhDACDhIChICIDhDACDDDAhIChDACDAhI"

    input = input_string_4
    output_string = machine.process(input)

    print(f"Input: {input}")
    print(f"Output: {output_string}")
    print(f"Output (sp): {' '.join(list(output_string))}")
    print(f"Final state: {machine.state}")
