class: CommandLineTool
id: capCdigestfastq.cwl
inputs:
- id: in_firstfq_first_pair
  doc: first_fq    is the first of the pair of fastq files
  type: boolean
  inputBinding:
    prefix: '-1'
- id: in_secondfq_second_pair
  doc: second_fq   is the second of the pair of fastq files
  type: boolean
  inputBinding:
    prefix: '-2'
- id: in_outputfq_name_output
  doc: output_fq   is the name of the output fastq file
  type: File
  inputBinding:
    prefix: -o
- id: in_seq_sequence_restriction
  doc: "SEQ         is the sequence of the restriction enzyme\nmust be characters\
    \ ACGT only"
  type: boolean
  inputBinding:
    prefix: -e
- id: in_x_bp_position
  doc: "X           is the bp position within SEQ where the\ncut will occur (first\
    \ base is 1; Xth base\nwill be the start of the right hand\nfragment)"
  type: boolean
  inputBinding:
    prefix: -p
- id: in_long
  doc: "option switches on 'long' mode, where only the\nlongest of the restriction\
    \ fragments in each of\nthe pairs is kept\n"
  type: boolean
  inputBinding:
    prefix: --long
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outputfq_name_output
  doc: output_fq   is the name of the output fastq file
  type: File
  outputBinding:
    glob: $(inputs.in_outputfq_name_output)
cwlVersion: v1.1
baseCommand:
- capCdigestfastq
