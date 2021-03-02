class: CommandLineTool
id: covels_SE.cwl
inputs:
- id: in_do_complementary_strand
  doc: ': do complementary strand too'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_set_background_expected
  doc: ': set background expected GC content (0.5 default)'
  type: double?
  inputBinding:
    prefix: -g
- id: in_save_hits_file
  doc: ': save hits in <file>'
  type: File?
  inputBinding:
    prefix: -o
- id: in_set_reporting_threshold
  doc: ': set score reporting threshold'
  type: string?
  inputBinding:
    prefix: -t
- id: in_set_scanning_size
  doc: ': set scanning window size'
  type: long?
  inputBinding:
    prefix: -w
- id: in_save_name_last
  doc: ': save name of last sequence processed'
  type: File?
  inputBinding:
    prefix: -D
- id: in_set_epsilon_fast
  doc: ': set epsilon for fast search'
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_fast_heuristic_search
  doc: ': fast heuristic search'
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_cove_ls
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_cm_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/trnascan-se:2.0.7--pl526h516909a_0
cwlVersion: v1.1
baseCommand:
- covels-SE
