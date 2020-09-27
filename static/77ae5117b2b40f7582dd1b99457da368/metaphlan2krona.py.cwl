class: CommandLineTool
id: metaphlan2krona.py.cwl
inputs:
- id: in_profile
  doc: The input file is the MetaPhlAn standard result file
  type: File
  inputBinding:
    prefix: --profile
- id: in_krona
  doc: "the Krons output file name\n"
  type: File
  inputBinding:
    prefix: --krona
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_krona
  doc: "the Krons output file name\n"
  type: File
  outputBinding:
    glob: $(inputs.in_krona)
cwlVersion: v1.1
baseCommand:
- metaphlan2krona.py
