class: CommandLineTool
id: jgoslin.cwl
inputs:
- id: in_grammar
  doc: "Use the provided grammar explicitly instead of all\ngrammars. Options are:\
    \ [GOSLIN, GOSLIN_FRAGMENTS,\nLIPIDMAPS, SWISSLIPIDS, HMDB, NONE]"
  type: string?
  inputBinding:
    prefix: --grammar
- id: in_name
  doc: Input a lipid name for parsing.
  type: string?
  inputBinding:
    prefix: --name
- id: in_output_file
  doc: "Write output to file 'goslin-out.tsv' instead of to\nstd out."
  type: File?
  inputBinding:
    prefix: --outputFile
- id: in_j_goslin_cli
  doc: "-f,--file <arg>      Input a file name to read from for lipid name for\nparsing.\
    \ Each lipid name must be on a separate line."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "Write output to file 'goslin-out.tsv' instead of to\nstd out."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- jgoslin
