class: CommandLineTool
id: hhfilter.cwl
inputs:
- id: in_read_input_file
  doc: read input file in A3M/A2M or FASTA format
  type: File?
  inputBinding:
    prefix: -i
- id: in_write_output_file
  doc: write to output file in A3M format
  type: File?
  inputBinding:
    prefix: -o
- id: in_append_output_file
  doc: append to output file in A3M format
  type: File?
  inputBinding:
    prefix: -a
- id: in_verbose_mode_screen
  doc: 'verbose mode: 0:no screen output  1:only warings  2: verbose'
  type: long?
  inputBinding:
    prefix: -v
- id: in_id
  doc: '[0,100]  maximum pairwise sequence identity (%) (def=90)'
  type: boolean?
  inputBinding:
    prefix: -id
- id: in_diff
  doc: "[0,inf[  filter MSA by selecting most diverse set of sequences, keeping\n\
    at least this many seqs in each MSA block of length 50 (def=0)"
  type: boolean?
  inputBinding:
    prefix: -diff
- id: in_cov
  doc: '[0,100]  minimum coverage with query (%) (def=0)'
  type: boolean?
  inputBinding:
    prefix: -cov
- id: in_qid
  doc: '[0,100]  minimum sequence identity with query (%) (def=0)'
  type: boolean?
  inputBinding:
    prefix: -qid
- id: in_qsc
  doc: '[0,100]  minimum score per column with query  (def=-20.0)'
  type: boolean?
  inputBinding:
    prefix: -qsc
- id: in_neff
  doc: '[1,inf]  target diversity of alignment (default=off)'
  type: boolean?
  inputBinding:
    prefix: -neff
- id: in_max_seq
  doc: max number of input rows (def=65535)
  type: long?
  inputBinding:
    prefix: -maxseq
- id: in_max_res
  doc: max number of HMM columns (def=20001)
  type: long?
  inputBinding:
    prefix: -maxres
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_write_output_file
  doc: write to output file in A3M format
  type: File?
  outputBinding:
    glob: $(inputs.in_write_output_file)
- id: out_append_output_file
  doc: append to output file in A3M format
  type: File?
  outputBinding:
    glob: $(inputs.in_append_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hhsuite:3.3.0--py38pl526h6ed170a_0
cwlVersion: v1.1
baseCommand:
- hhfilter
