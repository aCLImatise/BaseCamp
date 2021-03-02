class: CommandLineTool
id: fasta_utils_translate.cwl
inputs:
- id: in_trans_table
  doc: "[bac_plt|drs_mit|inv_mit|prt_mit|universal|vt_mit|yst_alt|yst_mit]\ntranslation\
    \ table  [default: universal]"
  type: boolean?
  inputBinding:
    prefix: --trans-table
- id: in_one_seq
  doc: "Only translate the sequence, instead of all\n6 frames  [default: False]"
  type: boolean?
  inputBinding:
    prefix: --one-seq
- id: in_no_wrap
  doc: "Make a sequence use only 1 line (2 including\nheader)  [default: False]"
  type: boolean?
  inputBinding:
    prefix: --no-wrap
- id: in_progress
  doc: Shows Progress Bar
  type: boolean?
  inputBinding:
    prefix: --progress
- id: in_fast_a_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0
cwlVersion: v1.1
baseCommand:
- fasta-utils
- translate
