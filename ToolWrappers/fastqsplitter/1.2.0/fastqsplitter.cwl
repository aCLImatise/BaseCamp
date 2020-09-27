class: CommandLineTool
id: fastqsplitter.cwl
inputs:
- id: in_input
  doc: The fastq file to be scattered.
  type: File
  inputBinding:
    prefix: --input
- id: in_output
  doc: "Scatter over these output files. Multiple -o flags can\nbe used. The extensions\
    \ determine which compression\nalgorithm will be used. '.gz' for gzip, '.bz2'\
    \ for\nbzip2, '.xz' for xz. Other extensions will use no\ncompression."
  type: long
  inputBinding:
    prefix: --output
- id: in_compression_level
  doc: "Only applicable when output files have a '.gz'\nextension. Default=1"
  type: long
  inputBinding:
    prefix: --compression-level
- id: in_threads_per_file
  doc: "Set the number of compression threads per output file.\nNOTE: more threads\
    \ are only useful when using a\ncompression level > 1. Default=1"
  type: File
  inputBinding:
    prefix: --threads-per-file
- id: in_cyt_hon
  doc: "Use the cython version of the file splitting\nalgorithm. (default)"
  type: boolean
  inputBinding:
    prefix: --cython
- id: in_python
  doc: "Use the python version of the file splitting\nalgorithm.\n"
  type: boolean
  inputBinding:
    prefix: --python
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastqsplitter
