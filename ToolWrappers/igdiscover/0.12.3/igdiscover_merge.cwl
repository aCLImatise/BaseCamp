class: CommandLineTool
id: igdiscover_merge.cwl
inputs:
- id: in_threads
  doc: Number of threads
  type: long?
  inputBinding:
    prefix: --threads
- id: in_no_cache
  doc: 'Disable cache. Default: Determined by configuration'
  type: boolean?
  inputBinding:
    prefix: --no-cache
- id: in_reads_one
  doc: Forward reads FASTQ file
  type: long
  inputBinding:
    position: 0
- id: in_reads_two
  doc: Reverse reads FASTQ file
  type: long
  inputBinding:
    position: 1
- id: in_output
  doc: Output file (compressed FASTQ)
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- igdiscover
- merge
