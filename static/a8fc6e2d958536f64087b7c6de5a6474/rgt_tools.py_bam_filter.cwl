class: CommandLineTool
id: rgt_tools.py_bam_filter.cwl
inputs:
- id: in_input_bam_file
  doc: Input BAM file
  type: File
  inputBinding:
    prefix: -i
- id: in_bed
  doc: Input BED file for the regions for filtering
  type: boolean
  inputBinding:
    prefix: -bed
- id: in_output_prefix_bam
  doc: Output prefix for BAM file
  type: File
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_prefix_bam
  doc: Output prefix for BAM file
  type: File
  outputBinding:
    glob: $(inputs.in_output_prefix_bam)
cwlVersion: v1.1
baseCommand:
- rgt-tools.py
- bam_filter
