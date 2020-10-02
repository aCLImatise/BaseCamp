class: CommandLineTool
id: tradis_plot.cwl
inputs:
- id: in_mapped_sorted_file
  doc: ': mapped, sorted bam file'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_mapping_quality_must
  doc: ': mapping quality must be greater than X (optional. default: 30)'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_output_base_name
  doc: ': output base name for plot (optional. default: tradis.plot)'
  type: boolean
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tradis_plot
