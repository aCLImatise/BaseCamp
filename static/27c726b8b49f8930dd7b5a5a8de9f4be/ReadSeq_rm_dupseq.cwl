class: CommandLineTool
id: ReadSeq_rm_dupseq.cwl
inputs:
- id: duplicates
  doc: remove identical sequence, or sequence contained by another sequence
  type: boolean
  inputBinding:
    prefix: --duplicates
- id: debug
  doc: output the ids that are contained by other sequences to standard out
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_file
  doc: input fasta file
  type: string
  inputBinding:
    prefix: --infile
- id: min_seq_length
  doc: filter sequence by minimum sequence length, default is 0
  type: string
  inputBinding:
    prefix: --min_seq_length
- id: outfile
  doc: output fasta file
  type: string
  inputBinding:
    prefix: --outfile
outputs: []
cwlVersion: v1.1
baseCommand:
- ReadSeq
- rm-dupseq
