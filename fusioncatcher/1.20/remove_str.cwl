class: CommandLineTool
id: remove_str.py.cwl
inputs:
- id: input
  doc: The input FASTQ file.
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The output FASTQ file.
  type: string
  inputBinding:
    prefix: --output
- id: str
  doc: The output FASTQ file containing the reads which are removed from the input
    due to high content of short tandem repeats (STR).
  type: string
  inputBinding:
    prefix: --str
- id: log
  doc: It outputs a detailed log.
  type: string
  inputBinding:
    prefix: --log
- id: overlap
  doc: The length of region where the two consecutive windows are overlapping. Default
    is 12.
  type: string
  inputBinding:
    prefix: --overlap
- id: length
  doc: The length of the sliding window. Default is 24.
  type: string
  inputBinding:
    prefix: --length
- id: km_er
  doc: The length of the kmer used in computing the codelength. Default is 2.
  type: string
  inputBinding:
    prefix: --kmer
- id: threshold
  doc: Any window which compresses less this threshold is considered to contain a
    short tandem repeat and the read will be filtered out. Default is 1.4.
  type: string
  inputBinding:
    prefix: --threshold
- id: author
  doc: 'Daniel Nicorici, E-mail: Daniel.Nicorici@gmail.com'
  type: string
  inputBinding:
    prefix: --author
- id: quiet
  doc: Do not print status messages to console.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: processes
  doc: Number of parallel processes/CPUs to be used for computations. In case of value
    0 then the program will use all the CPUs which are found. The default value is
    0.
  type: string
  inputBinding:
    prefix: --processes
outputs: []
cwlVersion: v1.1
baseCommand:
- remove_str.py
