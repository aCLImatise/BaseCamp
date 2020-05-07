class: CommandLineTool
id: igdiscover_merge.cwl
inputs:
- id: read_s1
  doc: Forward reads FASTQ file
  type: string
  inputBinding:
    position: 0
- id: read_s2
  doc: Reverse reads FASTQ file
  type: string
  inputBinding:
    position: 1
- id: output
  doc: Output file (compressed FASTQ)
  type: string
  inputBinding:
    position: 2
- id: threads
  doc: Number of threads
  type: string
  inputBinding:
    prefix: --threads
- id: no_cache
  doc: 'Disable cache. Default: Determined by configuration'
  type: boolean
  inputBinding:
    prefix: --no-cache
outputs: []
cwlVersion: v1.1
baseCommand:
- igdiscover
- merge
