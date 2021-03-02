class: CommandLineTool
id: cstranslate.cwl
inputs:
- id: in_in_file
  doc: Input file with alignment or sequence
  type: File?
  inputBinding:
    prefix: --infile
- id: in_outfile
  doc: 'Output file for generated abstract state sequence (def: <infile>.as)'
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_append
  doc: Append generated abstract state sequence to this file
  type: File?
  inputBinding:
    prefix: --append
- id: in_in_format
  doc: '|seq|fas|... Input format: prf, seq, fas, a2m, a3m or ca3m (def=auto)'
  type: long?
  inputBinding:
    prefix: --informat
- id: in_out_format
  doc: '|prf        Outformat: abstract state sequence or profile (def=seq)'
  type: string?
  inputBinding:
    prefix: --outformat
- id: in_match_assign
  doc: "[0:100]     Make all FASTA columns with less than X% gaps match columns\n\
    (def: make columns with residue in first sequence match columns)"
  type: boolean?
  inputBinding:
    prefix: --match-assign
- id: in_alphabet
  doc: Abstract state alphabet consisting of exactly 219 states (def=internal)
  type: File?
  inputBinding:
    prefix: --alphabet
- id: in_context_data
  doc: Add context-specific pseudocounts using given context-data (def=internal)
  type: File?
  inputBinding:
    prefix: --context-data
- id: in_pc_admix
  doc: '[0,1]           Pseudocount admix for context-specific pseudocounts (def=0.90)'
  type: boolean?
  inputBinding:
    prefix: --pc-admix
- id: in_pc_ali
  doc: '[0,inf[           Constant in pseudocount calculation for alignments (def=12.0)'
  type: boolean?
  inputBinding:
    prefix: --pc-ali
- id: in_weight
  doc: '[0,inf[           Weight of abstract state column in emission calculation
    (def=1000.00)'
  type: boolean?
  inputBinding:
    prefix: --weight
- id: in_ff_index
  doc: Read from -i <ffindex>, write to -o <ffindex> (do not include _ca3m suffix
    for ca3m informat); enables openmp if possible (def=off)
  type: boolean?
  inputBinding:
    prefix: --ffindex
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: 'Output file for generated abstract state sequence (def: <infile>.as)'
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hhsuite:3.3.0--py38pl526h6ed170a_0
cwlVersion: v1.1
baseCommand:
- cstranslate
