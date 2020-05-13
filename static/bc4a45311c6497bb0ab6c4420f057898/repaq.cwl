class: CommandLineTool
id: repaq.cwl
inputs:
- id: stdin
  doc: input from STDIN. If the STDIN is interleaved paired-end FASTQ, please also
    add --interleaved_in.
  type: boolean
  inputBinding:
    prefix: --stdin
- id: stdout
  doc: write to STDOUT. When decompressing PE data, this option will result in interleaved
    FASTQ output for paired-end input. Disabled by defaut.
  type: boolean
  inputBinding:
    prefix: --stdout
- id: interleaved_in
  doc: indicate that <in1> is an interleaved paired-end FASTQ which contains both
    read1 and read2. Disabled by defaut.
  type: boolean
  inputBinding:
    prefix: --interleaved_in
- id: compare
  doc: compare the files read by read to check the compression consistency. <rfq_to_compare>
    should be specified in this mode.
  type: boolean
  inputBinding:
    prefix: --compare
- id: rfq_to_compare
  doc: the RFQ file to be compared with the input. This option is only used in compare
    mode. (string [=])
  type: boolean
  inputBinding:
    prefix: --rfq_to_compare
- id: json_compare_result
  doc: the file to store the comparison result. This is optional since the result
    is also printed on STDOUT. (string [=])
  type: boolean
  inputBinding:
    prefix: --json_compare_result
- id: thread
  doc: thread number for xz compression. Higher thread num means higher speed and
    lower compression ratio (1~16), default 1. (int [=1])
  type: boolean
  inputBinding:
    prefix: --thread
- id: compression
  doc: compression level. Higher level means higher compression ratio, and more RAM
    usage (1~9), default 4. (int [=4])
  type: boolean
  inputBinding:
    prefix: --compression
outputs: []
cwlVersion: v1.1
baseCommand:
- repaq
