class: CommandLineTool
id: rgt_tools.py_bed_polya.cwl
inputs:
- id: in_input_bed_file
  doc: Input BED file
  type: File
  inputBinding:
    prefix: -i
- id: in_input_bam_file
  doc: Input BAM file
  type: File
  inputBinding:
    prefix: -b
- id: in_output_file
  doc: Output file
  type: File
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Output file
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- rgt-tools.py
- bed_polya
