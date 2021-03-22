class: CommandLineTool
id: fastaexplod.cwl
inputs:
- id: in_single_line
  doc: ': do not wrap sequence data lines'
  type: boolean?
  inputBinding:
    prefix: --singleline
- id: in_long_name
  doc: ': do not shorten name'
  type: boolean?
  inputBinding:
    prefix: --longname
- id: in_cols_length_default
  doc: '<cols>        : line length (default: 80)'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_data_only
  doc: ': do not print FastA header (data only)'
  type: boolean?
  inputBinding:
    prefix: --dataonly
- id: in_prefix_fasta_output
  doc: ': prefix for FastA output files (default: fasta_)'
  type: boolean?
  inputBinding:
    prefix: -p
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/biobambam:2.0.179--hc9558a2_0
cwlVersion: v1.1
baseCommand:
- fastaexplod
