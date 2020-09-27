class: CommandLineTool
id: rgt_tools.py_bed_filter.cwl
inputs:
- id: in_input_bed_file
  doc: Input BED file
  type: File
  inputBinding:
    prefix: -i
- id: in_output_bed_file
  doc: Output BED file
  type: File
  inputBinding:
    prefix: -o
- id: in_gene
  doc: Define file for the gene list
  type: File
  inputBinding:
    prefix: -gene
- id: in_min
  doc: Define minimal length
  type: long
  inputBinding:
    prefix: -min
- id: in_max
  doc: Define maximal length
  type: long
  inputBinding:
    prefix: -max
- id: in_score
  doc: Add the score from gene list to BED file
  type: boolean
  inputBinding:
    prefix: -score
- id: in_background
  doc: Get the genes not in the given gene list.
  type: boolean
  inputBinding:
    prefix: -background
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_bed_file
  doc: Output BED file
  type: File
  outputBinding:
    glob: $(inputs.in_output_bed_file)
cwlVersion: v1.1
baseCommand:
- rgt-tools.py
- bed_filter
