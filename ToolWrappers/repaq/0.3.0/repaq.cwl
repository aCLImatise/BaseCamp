class: CommandLineTool
id: repaq.cwl
inputs:
- id: in_in_one
  doc: input file name (string [=])
  type: boolean
  inputBinding:
    prefix: --in1
- id: in_out_one
  doc: output file name (string [=])
  type: File
  inputBinding:
    prefix: --out1
- id: in_in_two
  doc: read2 input file name when encoding paired-end FASTQ files (string [=])
  type: boolean
  inputBinding:
    prefix: --in2
- id: in_out_two
  doc: read2 output file name when decoding to paired-end FASTQ files (string [=])
  type: File
  inputBinding:
    prefix: --out2
- id: in_compress
  doc: compress input to output
  type: boolean
  inputBinding:
    prefix: --compress
- id: in_decompress
  doc: decompress input to output
  type: boolean
  inputBinding:
    prefix: --decompress
- id: in_chunk
  doc: the chunk size (kilo bases) for encoding, default 1000=1000kb. (int [=1000])
  type: boolean
  inputBinding:
    prefix: --chunk
- id: in_stdin
  doc: input from STDIN. If the STDIN is interleaved paired-end FASTQ, please also
    add --interleaved_in.
  type: boolean
  inputBinding:
    prefix: --stdin
- id: in_stdout
  doc: write to STDOUT. When decompressing PE data, this option will result in interleaved
    FASTQ output for paired-end input. Disabled by defaut.
  type: boolean
  inputBinding:
    prefix: --stdout
- id: in_interleaved_in
  doc: indicate that <in1> is an interleaved paired-end FASTQ which contains both
    read1 and read2. Disabled by defaut.
  type: boolean
  inputBinding:
    prefix: --interleaved_in
- id: in_compare
  doc: compare the files read by read to check the compression consistency. <rfq_to_compare>
    should be specified in this mode.
  type: boolean
  inputBinding:
    prefix: --compare
- id: in_rfq_to_compare
  doc: the RFQ file to be compared with the input. This option is only used in compare
    mode. (string [=])
  type: boolean
  inputBinding:
    prefix: --rfq_to_compare
- id: in_json_compare_result
  doc: the file to store the comparison result. This is optional since the result
    is also printed on STDOUT. (string [=])
  type: boolean
  inputBinding:
    prefix: --json_compare_result
- id: in_thread
  doc: thread number for xz compression. Higher thread num means higher speed and
    lower compression ratio (1~16), default 1. (int [=1])
  type: boolean
  inputBinding:
    prefix: --thread
- id: in_compression
  doc: compression level. Higher level means higher compression ratio, and more RAM
    usage (1~9), default 4. (int [=4])
  type: boolean
  inputBinding:
    prefix: --compression
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_one
  doc: output file name (string [=])
  type: File
  outputBinding:
    glob: $(inputs.in_out_one)
- id: out_out_two
  doc: read2 output file name when decoding to paired-end FASTQ files (string [=])
  type: File
  outputBinding:
    glob: $(inputs.in_out_two)
cwlVersion: v1.1
baseCommand:
- repaq
