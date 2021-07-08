def get_file_content(filename):
    with open(filename,'rt') as f:
        text = f.readlines()

    return text


