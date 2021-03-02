class: CommandLineTool
id: rgt_TDF_autobinding.cwl
inputs:
- id: in_input_fasta_file
  doc: Input FASTA file of the whole genome
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_define_minimum_length
  doc: '[Triplexes] Define the minimum length of triplex (default: 20)'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_set_maximal_errorrate
  doc: "[Triplexes] Set the maximal error-rate in % tolerated (default:\n20)"
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_abo
  doc: "[Triplexes] Autobinding offset. Maximum offset between\nautobinding regions\
    \ (must be positive, >= 0), e.g., 1 for\nregions to be at least adjacent, 2 if\
    \ there can be 1 bp space\nbetween segments, etc. (default: 5)\n"
  type: boolean?
  inputBinding:
    prefix: -abo
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rgt-TDF
- autobinding
