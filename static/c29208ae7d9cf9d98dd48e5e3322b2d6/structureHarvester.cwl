class: CommandLineTool
id: structureHarvester.py.cwl
inputs:
- id: dir
  doc: The structure Results/ directory.
  type: string
  inputBinding:
    prefix: --dir
- id: out
  doc: The out directory. If it does not exist, it will be created. Output written
    to summary.txt
  type: string
  inputBinding:
    prefix: --out
- id: evan_no
  doc: If possible, performs the Evanno 2005 method. Written to evanno.txt. default=False
  type: boolean
  inputBinding:
    prefix: --evanno
- id: clump_p
  doc: Generates one K*.indfile for each value of K run, for use with CLUMPP. default=False
  type: boolean
  inputBinding:
    prefix: --clumpp
outputs: []
cwlVersion: v1.1
baseCommand:
- structureHarvester.py
