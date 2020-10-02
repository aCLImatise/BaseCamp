class: CommandLineTool
id: min_coverage.cwl
inputs:
- id: in_name_target_contig
  doc: Name of target contig, e.g. HXB2:2253-2256
  type: long
  inputBinding:
    prefix: -t
- id: in_input_sambam_file
  doc: Input SAM/BAM file
  type: File
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- min_coverage
