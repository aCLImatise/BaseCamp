class: CommandLineTool
id: capC_MAP_getchromsizes.cwl
inputs:
- id: in_bed_file_continaing
  doc: "bed file continaing list of restriction enzyme fragments\nfor genome"
  type: File?
  inputBinding:
    prefix: -f
- id: in_output_file_name
  doc: 'output file name (Default: chrom.sizes)'
  type: File?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: 'output file name (Default: chrom.sizes)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_name)
hints: []
cwlVersion: v1.1
baseCommand:
- capC-MAP
- getchromsizes
