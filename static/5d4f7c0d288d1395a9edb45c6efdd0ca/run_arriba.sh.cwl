class: CommandLineTool
id: run_arriba.sh.cwl
inputs:
- id: in_star_genome_dir_slash
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_annotation_dot_gtf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_assembly_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_blacklist_dot_tsv
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_read_one_dot_fast_q_do_tgz
  doc: ''
  type: long
  inputBinding:
    position: 4
- id: in_read_two_dot_fast_q_do_tgz
  doc: ''
  type: long
  inputBinding:
    position: 5
- id: in_threads
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- run_arriba.sh
