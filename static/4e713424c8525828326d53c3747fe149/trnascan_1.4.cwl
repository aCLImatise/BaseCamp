class: CommandLineTool
id: trnascan_1.4.cwl
inputs:
- id: in_use_original_trnascan
  doc: ': use original tRNAscan 1.3 parameters (default)'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_use_search_parameters
  doc: ': use relaxed search parameters (used with tRNAscan-SE)'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_use_alternate_userset
  doc: ': use alternate (user-set) search parameters'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in__suppress_credits
  doc: ': suppress credits'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_write_results_outfile
  doc: ': write results to <outfile>'
  type: string?
  inputBinding:
    prefix: -o
- id: in_start_sequence_numbering
  doc: ': start sequence numbering at <integer> (def=1)'
  type: long?
  inputBinding:
    prefix: -i
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_trnascan
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/trnascan-se:2.0.7--pl526h516909a_0
cwlVersion: v1.1
baseCommand:
- trnascan-1.4
