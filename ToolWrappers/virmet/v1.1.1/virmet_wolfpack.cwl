class: CommandLineTool
id: virmet_wolfpack.cwl
inputs:
- id: in_run
  doc: Miseq run directory
  type: Directory
  inputBinding:
    prefix: --run
- id: in_file
  doc: single fastq file
  type: File
  inputBinding:
    prefix: --file
- id: in_vir_met
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_command
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_wolfpack
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- virmet
- wolfpack
