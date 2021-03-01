class: CommandLineTool
id: Lace_Checker.py.cwl
inputs:
- id: in_cores
  doc: The number of cores you wish to run the job on (default = 1)
  type: long?
  inputBinding:
    prefix: --cores
- id: in_super_file
  doc: The name of the SuperDuper.fasta file created by
  type: string
  inputBinding:
    position: 0
- id: in_super_transcript
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- Lace_Checker.py
