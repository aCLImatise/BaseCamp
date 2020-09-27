class: CommandLineTool
id: circulargenerator.cwl
inputs:
- id: in_input
  doc: the input FastA File
  type: File
  inputBinding:
    prefix: --input
- id: in_seq
  doc: "the names of the sequences that should to\nbe elongated\n"
  type: string
  inputBinding:
    prefix: --seq
- id: in_circular_generator_v_one_dot_zero
  doc: -e,--elongation <ELONGATION>   the elongation factor [INT]
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- circulargenerator
