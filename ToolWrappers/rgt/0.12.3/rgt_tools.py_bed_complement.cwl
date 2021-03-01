class: CommandLineTool
id: rgt_tools.py_bed_complement.cwl
inputs:
- id: in_input_bed_file
  doc: Input BED file
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
- bed_complement
