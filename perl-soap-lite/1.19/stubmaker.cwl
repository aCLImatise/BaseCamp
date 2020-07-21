class: CommandLineTool
id: ../../../stubmaker.pl.cwl
inputs:
- id: verbose_outputbe_quiet
  doc: Verbose Outputbe quiet
  type: boolean
  inputBinding:
    prefix: -v
- id: output_directory
  doc: Output directory
  type: string
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- stubmaker.pl
