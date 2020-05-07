class: CommandLineTool
id: liftover.py.cwl
inputs:
- id: input
  doc: The input list of fusion genes and their genome coordinates.
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The input list of fusion genes and their genome coordinates.
  type: string
  inputBinding:
    prefix: --output
- id: chain
  doc: The chain files needed by liftOver to do the conversion.
  type: string
  inputBinding:
    prefix: --chain
- id: path_lift_over
  doc: Path to the liftover executable.
  type: File
  inputBinding:
    prefix: --path-liftover
- id: tmp_dir
  doc: The directory which should be used as temporary directory. By default is the
    OS temporary directory.
  type: string
  inputBinding:
    prefix: --tmp_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- liftover.py
