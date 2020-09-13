class: CommandLineTool
id: ../../../gkpStoreDumpFASTQ.cwl
inputs:
- id: in_g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: in_write_fastqprefixfastq_fastqprefixunmatedfastq
  doc: write files fastq-prefix.1.fastq, fastq-prefix.2.fastq, fastq-prefix.paired.fastq,
    fastq-prefix.unmated.fastq
  type: double
  inputBinding:
    prefix: -o
- id: in_output_only_fragments
  doc: output only fragments in library number libToDump (NOT IMPLEMENTED)
  type: long
  inputBinding:
    prefix: -l
- id: in_output_starting_fragment
  doc: output starting at fragment iid
  type: string
  inputBinding:
    prefix: -b
- id: in_output_stopping_fragment
  doc: output stopping after fragment iid
  type: string
  inputBinding:
    prefix: -e
- id: in_output_clear_range
  doc: output clear range 'clrName'
  type: string
  inputBinding:
    prefix: -c
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gkpStoreDumpFASTQ
