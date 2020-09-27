class: CommandLineTool
id: ReadSeq_rm_dupseq.cwl
inputs:
- id: in_duplicates
  doc: remove identical sequence, or sequence contained by another sequence
  type: boolean
  inputBinding:
    prefix: --duplicates
- id: in_debug
  doc: output the ids that are contained by other sequences to standard out
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_in_file
  doc: input fasta file
  type: File
  inputBinding:
    prefix: --infile
- id: in_min_seq_length
  doc: filter sequence by minimum sequence length, default is 0
  type: long
  inputBinding:
    prefix: --min_seq_length
- id: in_outfile
  doc: output fasta file
  type: File
  inputBinding:
    prefix: --outfile
- id: in_rm_redundant_seqs
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: output fasta file
  type: File
  outputBinding:
    glob: $(inputs.in_outfile)
cwlVersion: v1.1
baseCommand:
- ReadSeq
- rm-dupseq
