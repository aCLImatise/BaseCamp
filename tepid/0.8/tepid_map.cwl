class: CommandLineTool
id: ../../../tepid_map.cwl
inputs:
- id: path_bowtie_index
  doc: path to bowtie2 index
  type: boolean
  inputBinding:
    prefix: -x
- id: path_yaha_index
  doc: path to yaha index
  type: boolean
  inputBinding:
    prefix: -y
- id: number_cores_use
  doc: number of cores to use
  type: boolean
  inputBinding:
    prefix: -p
- id: average_insert_size
  doc: average insert size
  type: boolean
  inputBinding:
    prefix: -s
- id: sample_name
  doc: sample name
  type: boolean
  inputBinding:
    prefix: -n
- id: one
  doc: 'fastq file with #1 mates'
  type: boolean
  inputBinding:
    prefix: '-1'
- id: two
  doc: 'fastq file with #2 mates'
  type: boolean
  inputBinding:
    prefix: '-2'
- id: recursive_optional
  doc: recursive (optional)
  type: boolean
  inputBinding:
    prefix: -r
- id: gzip_fastq_files
  doc: gzip fastq files (optional)
  type: boolean
  inputBinding:
    prefix: -z
outputs: []
cwlVersion: v1.1
baseCommand:
- tepid-map
