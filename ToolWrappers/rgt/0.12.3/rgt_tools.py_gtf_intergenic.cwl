class: CommandLineTool
id: rgt_tools.py_gtf_intergenic.cwl
inputs:
- id: in_input_gtf_file
  doc: Input GTF file
  type: File
  inputBinding:
    prefix: -i
- id: in_output_directory_bed
  doc: Output directory for BED file
  type: File
  inputBinding:
    prefix: -o
- id: in_organism
  doc: Define the organism
  type: boolean
  inputBinding:
    prefix: -organism
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory_bed
  doc: Output directory for BED file
  type: File
  outputBinding:
    glob: $(inputs.in_output_directory_bed)
cwlVersion: v1.1
baseCommand:
- rgt-tools.py
- gtf_intergenic
