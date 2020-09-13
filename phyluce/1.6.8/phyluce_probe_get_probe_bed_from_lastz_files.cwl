class: CommandLineTool
id: ../../../phyluce_probe_get_probe_bed_from_lastz_files.cwl
inputs:
- id: in_output
  doc: ''
  type: string
  inputBinding:
    prefix: --output
- id: in_input
  doc: The input directory containing lastz files
  type: Directory
  inputBinding:
    prefix: --input
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_probe_get_probe_bed_from_lastz_files
