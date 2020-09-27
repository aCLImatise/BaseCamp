class: CommandLineTool
id: gkpStoreDumpFASTQ.cwl
inputs:
- id: in_fastqprefix_write_fastqprefixunmatedfastql
  doc: "-o fastq-prefix     write files fastq-prefix.1.fastq, fastq-prefix.2.fastq,\
    \ fastq-prefix.paired.fastq, fastq-prefix.unmated.fastq\n-l libToDump        output\
    \ only fragments in library number libToDump (NOT IMPLEMENTED)\n-b iid       \
    \       output starting at fragment iid\n-e iid              output stopping after\
    \ fragment iid\n-c clrName          output clear range 'clrName'"
  type: long
  inputBinding:
    prefix: -g
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gkpStoreDumpFASTQ
