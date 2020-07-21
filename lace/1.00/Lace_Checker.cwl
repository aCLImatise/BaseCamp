class: CommandLineTool
id: ../../../Lace_Checker.py.cwl
inputs:
- id: cores
  doc: The number of cores you wish to run the job on (default = 1)
  type: string
  inputBinding:
    prefix: --cores
- id: super_file
  doc: The name of the SuperDuper.fasta file created by SuperTranscript
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- Lace_Checker.py
