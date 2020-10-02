class: CommandLineTool
id: phyluce_probe_get_probe_bed_from_lastz_files.cwl
inputs:
- id: in_input
  doc: The input directory containing lastz files
  type: Directory
  inputBinding:
    prefix: --input
- id: in_output
  doc: The output directory to hold BED-formatted files
  type: Directory
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The output directory to hold BED-formatted files
  type: Directory
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- phyluce_probe_get_probe_bed_from_lastz_files
