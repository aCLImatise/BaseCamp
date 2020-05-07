class: CommandLineTool
id: cstranslate.cwl
inputs:
- id: in_file
  doc: Input file with alignment or sequence
  type: File
  inputBinding:
    prefix: --infile
- id: outfile
  doc: 'Output file for generated abstract state sequence (def: <infile>.as)'
  type: File
  inputBinding:
    prefix: --outfile
- id: append
  doc: Append generated abstract state sequence to this file
  type: File
  inputBinding:
    prefix: --append
- id: in_format
  doc: '|seq|fas|... Input format: prf, seq, fas, a2m, a3m or ca3m (def=auto)'
  type: string
  inputBinding:
    prefix: --informat
- id: out_format
  doc: '|prf        Outformat: abstract state sequence or profile (def=seq)'
  type: string
  inputBinding:
    prefix: --outformat
- id: match_assign
  doc: '[0:100]     Make all FASTA columns with less than X% gaps match columns (def:
    make columns with residue in first sequence match columns)'
  type: boolean
  inputBinding:
    prefix: --match-assign
- id: alphabet
  doc: Abstract state alphabet consisting of exactly 219 states (def=internal)
  type: File
  inputBinding:
    prefix: --alphabet
- id: context_data
  doc: Add context-specific pseudocounts using given context-data (def=internal)
  type: File
  inputBinding:
    prefix: --context-data
- id: pc_admix
  doc: '[0,1]           Pseudocount admix for context-specific pseudocounts (def=0.90)'
  type: boolean
  inputBinding:
    prefix: --pc-admix
- id: pc_ali
  doc: '[0,inf[           Constant in pseudocount calculation for alignments (def=12.0)'
  type: boolean
  inputBinding:
    prefix: --pc-ali
- id: weight
  doc: '[0,inf[           Weight of abstract state column in emission calculation
    (def=1000.00)'
  type: boolean
  inputBinding:
    prefix: --weight
- id: ff_index
  doc: Read from -i <ffindex>, write to -o <ffindex> (do not include _ca3m suffix
    for ca3m informat); enables openmp if possible (def=off)
  type: boolean
  inputBinding:
    prefix: --ffindex
outputs: []
cwlVersion: v1.1
baseCommand:
- cstranslate
