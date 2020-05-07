class: CommandLineTool
id: tepid_map_se.cwl
inputs:
- id: x
  doc: path to bowtie2 index
  type: boolean
  inputBinding:
    prefix: -x
- id: y
  doc: path to yaha index
  type: boolean
  inputBinding:
    prefix: -y
- id: p
  doc: number of cores to use
  type: boolean
  inputBinding:
    prefix: -p
- id: n
  doc: sample name
  type: boolean
  inputBinding:
    prefix: -n
- id: q
  doc: fastq file containing reads
  type: boolean
  inputBinding:
    prefix: -q
- id: r
  doc: recursive (optional)
  type: boolean
  inputBinding:
    prefix: -r
- id: z
  doc: gzip fastq files (optional)
  type: boolean
  inputBinding:
    prefix: -z
outputs: []
cwlVersion: v1.1
baseCommand:
- tepid-map-se
