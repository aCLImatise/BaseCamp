class: CommandLineTool
id: structureHarvester.py.cwl
inputs:
- id: in_dir
  doc: The structure Results/ directory.
  type: Directory?
  inputBinding:
    prefix: --dir
- id: in_out
  doc: "The out directory. If it does not exist, it will be\ncreated. Output written\
    \ to summary.txt"
  type: Directory?
  inputBinding:
    prefix: --out
- id: in_evan_no
  doc: "If possible, performs the Evanno 2005 method. Written to\nevanno.txt. default=False"
  type: boolean?
  inputBinding:
    prefix: --evanno
- id: in_clump_p
  doc: "Generates one K*.indfile for each value of K run, for use\nwith CLUMPP. default=False\n"
  type: boolean?
  inputBinding:
    prefix: --clumpp
- id: in_usage
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "The out directory. If it does not exist, it will be\ncreated. Output written\
    \ to summary.txt"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- structureHarvester.py
