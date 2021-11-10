def print_string_as_hex(string: str):
    """
    Print a string in its hex representation.
    :string: The string the print.
    """
    print(" ".join(list(map(lambda letter: hex(ord(letter)), string))))
