#!/usr/bin/env cwl-runner

baseCommand:
- fastqsplitter
class: CommandLineTool
cwlVersion: v1.0
id: fastqsplitter
inputs:
- doc: The fastq file to be scattered.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: Scatter over these output files. Multiple -o flags can be used. The extensions
    determine which compression algorithm will be used. '.gz' for gzip, '.bz2' for
    bzip2, '.xz' for xz. Other extensions will use no compression.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: Only applicable when output files have a '.gz' extension. Default=1
  id: compression_level
  inputBinding:
    prefix: --compression-level
  type: string
- doc: 'Set the number of compression threads per output file. NOTE: more threads
    are only useful when using a compression level > 1. Default=1'
  id: threads_per_file
  inputBinding:
    prefix: --threads-per-file
  type: string
- doc: Use the cython version of the file splitting algorithm. (default)
  id: cyt_hon
  inputBinding:
    prefix: --cython
  type: boolean
- doc: Use the python version of the file splitting algorithm.
  id: python
  inputBinding:
    prefix: --python
  type: boolean
