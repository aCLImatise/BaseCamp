class: CommandLineTool
id: fastqsplitter.cwl
inputs:
- id: input
  doc: The fastq file to be scattered.
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: Scatter over these output files. Multiple -o flags can be used. The extensions
    determine which compression algorithm will be used. '.gz' for gzip, '.bz2' for
    bzip2, '.xz' for xz. Other extensions will use no compression.
  type: string
  inputBinding:
    prefix: --output
- id: compression_level
  doc: Only applicable when output files have a '.gz' extension. Default=1
  type: string
  inputBinding:
    prefix: --compression-level
- id: threads_per_file
  doc: 'Set the number of compression threads per output file. NOTE: more threads
    are only useful when using a compression level > 1. Default=1'
  type: string
  inputBinding:
    prefix: --threads-per-file
- id: cyt_hon
  doc: Use the cython version of the file splitting algorithm. (default)
  type: boolean
  inputBinding:
    prefix: --cython
- id: python
  doc: Use the python version of the file splitting algorithm.
  type: boolean
  inputBinding:
    prefix: --python
outputs: []
cwlVersion: v1.1
baseCommand:
- fastqsplitter
