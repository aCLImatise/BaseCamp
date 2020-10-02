class: CommandLineTool
id: qvalue.cwl
inputs:
- id: in_null
  doc: "--good-score high|low\n--pi-zero\n--pi-zero-file <file>\n--fdr\n--bootstraps\
    \ <int> (default=1000)\n--header <int> (default=0)\n--column <int> (default=1)\n\
    --append\n--seed <int> (default from clock)\n--verbosity 1|2|3|4 (default = 2)\n"
  type: File
  inputBinding:
    prefix: --null
- id: in_p_values
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- qvalue
