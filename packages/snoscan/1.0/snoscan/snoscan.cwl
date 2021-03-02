class: CommandLineTool
id: snoscan.cwl
inputs:
- id: in_specify_methylation_sites
  doc: ': specify methylation sites'
  type: File?
  inputBinding:
    prefix: -m
- id: in_save_candidates_outfile
  doc: ': save candidates in <outfile>'
  type: string?
  inputBinding:
    prefix: -o
- id: in_save_snorna_sequences
  doc: ': save snoRNA sequences with hit info'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_set_minimim_length
  doc: ': set minimim length for snoRNA-rRNA pairing (def=9bp)'
  type: long?
  inputBinding:
    prefix: -l
- id: in_set_c_box
  doc: ': set C Box score cutoff to <Score>'
  type: string?
  inputBinding:
    prefix: -C
- id: in_set_d_prime
  doc: ': set D prime Box score cutoff to <Score>'
  type: string?
  inputBinding:
    prefix: -D
- id: in_set_final_cutoff
  doc: ': set final score cutoff to <Score>'
  type: string?
  inputBinding:
    prefix: -X
- id: in_set_min_score
  doc: ': set min score for complementary region match'
  type: long?
  inputBinding:
    prefix: -c
- id: in_set_max_distance_c
  doc: ': set max distance between C & D boxes'
  type: long?
  inputBinding:
    prefix: -d
- id: in_set_min_distance
  doc: ": set min distance between rRNA match &\nD box when D prime box is present\
    \ (def=10bp)"
  type: long?
  inputBinding:
    prefix: -p
- id: in_initiate_scan_def
  doc: ': Initiate scan at <position> in sequence (def=1)'
  type: long?
  inputBinding:
    prefix: -i
- id: in_set_max_distance_known
  doc: ': set max distance to known meth site (Def=0)'
  type: long?
  inputBinding:
    prefix: -M
- id: in__verbose_output
  doc: ': verbose output'
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_rrna_sequence_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_query_sequence_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/snoscan:1.0--pl526h516909a_0
cwlVersion: v1.1
baseCommand:
- snoscan
