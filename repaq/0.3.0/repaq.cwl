#!/usr/bin/env cwl-runner

baseCommand:
- repaq
class: CommandLineTool
cwlVersion: v1.0
id: repaq
inputs:
- doc: input from STDIN. If the STDIN is interleaved paired-end FASTQ, please also
    add --interleaved_in.
  id: stdin
  inputBinding:
    prefix: --stdin
  type: boolean
- doc: write to STDOUT. When decompressing PE data, this option will result in interleaved
    FASTQ output for paired-end input. Disabled by defaut.
  id: stdout
  inputBinding:
    prefix: --stdout
  type: boolean
- doc: indicate that <in1> is an interleaved paired-end FASTQ which contains both
    read1 and read2. Disabled by defaut.
  id: interleaved_in
  inputBinding:
    prefix: --interleaved_in
  type: boolean
- doc: compare the files read by read to check the compression consistency. <rfq_to_compare>
    should be specified in this mode.
  id: compare
  inputBinding:
    prefix: --compare
  type: boolean
- doc: the RFQ file to be compared with the input. This option is only used in compare
    mode. (string [=])
  id: rfq_to_compare
  inputBinding:
    prefix: --rfq_to_compare
  type: boolean
- doc: the file to store the comparison result. This is optional since the result
    is also printed on STDOUT. (string [=])
  id: json_compare_result
  inputBinding:
    prefix: --json_compare_result
  type: boolean
- doc: thread number for xz compression. Higher thread num means higher speed and
    lower compression ratio (1~16), default 1. (int [=1])
  id: thread
  inputBinding:
    prefix: --thread
  type: boolean
- doc: compression level. Higher level means higher compression ratio, and more RAM
    usage (1~9), default 4. (int [=4])
  id: compression
  inputBinding:
    prefix: --compression
  type: boolean
