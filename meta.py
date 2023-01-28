import json

with open("data.json") as json_file:
    data = json.load(json_file)

rst_output = ""
for key, value in data.items():
    rst_output += f"{key}: {value}\n"

with open("Services/Meta/data.rst", "w") as rst_file:
    rst_file.write(rst_output)
