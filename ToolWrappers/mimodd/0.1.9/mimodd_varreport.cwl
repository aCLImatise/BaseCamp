class: CommandLineTool
id: mimodd_varreport.cwl
inputs:
- id: in_ofile
  doc: "redirect the output to the specified file (default:\nstdout)"
  type: File
  inputBinding:
    prefix: --ofile
- id: in_text__oformat
  doc: "|text, --oformat html|text\nthe format of the output file (default: html)"
  type: File
  inputBinding:
    prefix: -f
- id: in_species
  doc: "the name of the species to be assumed when generating\nannotations"
  type: string
  inputBinding:
    prefix: --species
- id: in_link
  doc: "file to read species-specific hyperlink formatting\ninstructions from\n"
  type: File
  inputBinding:
    prefix: --link
- id: in_var_report
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_ofile
  doc: "redirect the output to the specified file (default:\nstdout)"
  type: File
  outputBinding:
    glob: $(inputs.in_ofile)
- id: out_text__oformat
  doc: "|text, --oformat html|text\nthe format of the output file (default: html)"
  type: File
  outputBinding:
    glob: $(inputs.in_text__oformat)
cwlVersion: v1.1
baseCommand:
- mimodd
- varreport
