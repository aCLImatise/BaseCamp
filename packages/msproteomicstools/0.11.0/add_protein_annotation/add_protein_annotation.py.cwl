class: CommandLineTool
id: add_protein_annotation.py.cwl
inputs:
- id: in_fast_a
  doc: A fasta file
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_in
  doc: A mProphet output file
  type: File?
  inputBinding:
    prefix: --in
- id: in_out
  doc: A modified mProphet output file
  type: File?
  inputBinding:
    prefix: --out
- id: in_var_3
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_script
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_annotate
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_var_7
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_csv
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_with
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_protein
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_descriptions
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_from
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_fast_a_dot
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: in_it
  doc: ''
  type: string
  inputBinding:
    position: 11
- id: in_will
  doc: ''
  type: string
  inputBinding:
    position: 12
- id: in_search
  doc: ''
  type: string
  inputBinding:
    position: 13
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 14
- id: in_column
  doc: ''
  type: string
  inputBinding:
    position: 16
- id: in_named
  doc: ''
  type: string
  inputBinding:
    position: 17
- id: in_protein_name
  doc: ''
  type: string
  inputBinding:
    position: 18
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_in
  doc: A mProphet output file
  type: File?
  outputBinding:
    glob: $(inputs.in_in)
- id: out_out
  doc: A modified mProphet output file
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/msproteomicstools:0.11.0--py27ha968a36_1
cwlVersion: v1.1
baseCommand:
- add_protein_annotation.py
