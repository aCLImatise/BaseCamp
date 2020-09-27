class: CommandLineTool
id: rtg_sdfsubseq.cwl
inputs:
- id: in_input
  doc: input SDF
  type: string
  inputBinding:
    prefix: --input
- id: in_sequence_id
  doc: "if set, use sequence id instead of sequence name in\nregion (0-based)\nREGION+\
    \              the range to display. The format is one of\n<sequence_name>, <sequence_name>:<start>-<end>,\n\
    <sequence_name>:<pos>+<length> or\n<sequence_name>:<pos>~<padding>. Must be specified\
    \ 1\nor more times"
  type: boolean
  inputBinding:
    prefix: --sequence-id
- id: in_fast_a
  doc: if set, output in FASTA format
  type: boolean
  inputBinding:
    prefix: --fasta
- id: in_fast_q
  doc: if set, output in FASTQ format
  type: boolean
  inputBinding:
    prefix: --fastq
- id: in_reverse_complement
  doc: set, output in reverse complement
  type: string
  inputBinding:
    prefix: --reverse-complement
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rtg
- sdfsubseq
