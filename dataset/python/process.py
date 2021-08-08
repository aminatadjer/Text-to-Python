import json

i=0
with open('valid.jsonl', 'r') as f:
	json_list = list(f)

with open("valid1.jsonl", "w") as out_file:
	for entry in json_list:
		result = json.loads(entry)
		json.dump(result,out_file)
		out_file.write('\n')
		i=i+1
		if i==1550:
			break



