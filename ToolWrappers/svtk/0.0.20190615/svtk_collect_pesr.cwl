class: CommandLineTool
id: svtk_collect_pesr.cwl
inputs:
- id: in_index_dir
  doc: "Directory of local BAM indexes if accessing a remote\nS3 bam."
  type: Directory
  inputBinding:
    prefix: --index-dir
- id: in_region
  doc: Tabix-formatted region to parse
  type: string
  inputBinding:
    prefix: --region
- id: in_b_gzip
  doc: bgzip and tabix index output
  type: boolean
  inputBinding:
    prefix: --bgzip
- id: in_bam
  doc: Local or S3 path to bam
  type: string
  inputBinding:
    position: 0
- id: in_sample
  doc: ID to append to each line of output files.
  type: string
  inputBinding:
    position: 1
- id: in_split_file
  doc: Output split counts.
  type: string
  inputBinding:
    position: 2
- id: in_disc_file
  doc: Output discordant pairs.
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- svtk
- collect-pesr
