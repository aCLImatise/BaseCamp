class: CommandLineTool
id: ../../../capCdigestfastq.cwl
inputs:
- id: firstfq_first_pair
  doc: first_fq    is the first of the pair of fastq files
  type: boolean
  inputBinding:
    prefix: '-1'
- id: secondfq_second_pair
  doc: second_fq   is the second of the pair of fastq files
  type: boolean
  inputBinding:
    prefix: '-2'
- id: name_output_fastq
  doc: output_fq   is the name of the output fastq file
  type: boolean
  inputBinding:
    prefix: -o
- id: seq_sequence_restriction
  doc: SEQ         is the sequence of the restriction enzyme must be characters ACGT
    only
  type: boolean
  inputBinding:
    prefix: -e
- id: x_bp_position
  doc: X           is the bp position within SEQ where the cut will occur (first base
    is 1; Xth base will be the start of the right hand fragment)
  type: boolean
  inputBinding:
    prefix: -p
- id: long
  doc: option switches on 'long' mode, where only the longest of the restriction fragments
    in each of the pairs is kept
  type: boolean
  inputBinding:
    prefix: --long
outputs: []
cwlVersion: v1.1
baseCommand:
- capCdigestfastq
