class: CommandLineTool
id: seqsplit.cwl
inputs:
- id: in_output_new_file
  doc: ': output the new FASTA file to <file>'
  type: File?
  inputBinding:
    prefix: -o
- id: in_frag_file
  doc: ': save one-line-per-frag coord summary file to <f>'
  type: File?
  inputBinding:
    prefix: --fragfile
- id: in_in_format
  doc: ': specify sequence file format <s>'
  type: File?
  inputBinding:
    prefix: --informat
- id: in_length
  doc: ': set max length of each unique seq frag to <n>'
  type: long?
  inputBinding:
    prefix: --length
- id: in_overlap
  doc: ': set overlap length to <n> (total frag size = length+overlap)'
  type: long?
  inputBinding:
    prefix: --overlap
- id: in_short_names
  doc: ': use short "frag1" names, not "<src>/<from>-<to>"'
  type: boolean?
  inputBinding:
    prefix: --shortnames
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_new_file
  doc: ': output the new FASTA file to <file>'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_new_file)
hints: []
cwlVersion: v1.1
baseCommand:
- seqsplit
