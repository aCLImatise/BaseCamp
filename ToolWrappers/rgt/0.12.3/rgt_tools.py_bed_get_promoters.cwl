class: CommandLineTool
id: rgt_tools.py_bed_get_promoters.cwl
inputs:
- id: in_input_file_bed
  doc: Input file (BED or gene list)
  type: File?
  inputBinding:
    prefix: -i
- id: in_output_bed_file
  doc: Output BED file
  type: File?
  inputBinding:
    prefix: -o
- id: in_organism
  doc: Define the organism (necessary if input is a gene list)
  type: string?
  inputBinding:
    prefix: -organism
- id: in_define_length_promoters
  doc: Define length of promoters (default:1000bp)
  type: long?
  inputBinding:
    prefix: -l
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_bed_file
  doc: Output BED file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_bed_file)
hints: []
cwlVersion: v1.1
baseCommand:
- rgt-tools.py
- bed_get_promoters
