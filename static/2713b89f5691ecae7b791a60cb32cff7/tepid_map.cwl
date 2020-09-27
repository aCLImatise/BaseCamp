class: CommandLineTool
id: tepid_map.cwl
inputs:
- id: in_path_bowtie_index
  doc: path to bowtie2 index
  type: boolean
  inputBinding:
    prefix: -x
- id: in_path_yaha_index
  doc: path to yaha index
  type: boolean
  inputBinding:
    prefix: -y
- id: in_number_cores_use
  doc: number of cores to use
  type: boolean
  inputBinding:
    prefix: -p
- id: in_average_insert_size
  doc: average insert size
  type: boolean
  inputBinding:
    prefix: -s
- id: in_sample_name
  doc: sample name
  type: boolean
  inputBinding:
    prefix: -n
- id: in_one
  doc: 'fastq file with #1 mates'
  type: boolean
  inputBinding:
    prefix: '-1'
- id: in_two
  doc: 'fastq file with #2 mates'
  type: boolean
  inputBinding:
    prefix: '-2'
- id: in_recursive_optional
  doc: recursive (optional)
  type: boolean
  inputBinding:
    prefix: -r
- id: in_gzip_fastq_files
  doc: gzip fastq files (optional)
  type: boolean
  inputBinding:
    prefix: -z
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tepid-map
