class: CommandLineTool
id: ../../../tepid_map_se.cwl
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
- id: sample_name
  doc: sample name
  type: boolean
  inputBinding:
    prefix: -n
- id: fastq_file_containing
  doc: fastq file containing reads
  type: boolean
  inputBinding:
    prefix: -q
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
- tepid-map-se
