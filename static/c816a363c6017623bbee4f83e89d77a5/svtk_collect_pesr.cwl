class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/svtk_collect_pesr.cwl
inputs:
- id: index_dir
  doc: Directory of local BAM indexes if accessing a remote S3 bam.
  type: string
  inputBinding:
    prefix: --index-dir
- id: region
  doc: Tabix-formatted region to parse
  type: string
  inputBinding:
    prefix: --region
- id: b_gzip
  doc: bgzip and tabix index output
  type: boolean
  inputBinding:
    prefix: --bgzip
- id: bam
  doc: Local or S3 path to bam
  type: string
  inputBinding:
    position: 0
- id: sample
  doc: ID to append to each line of output files.
  type: string
  inputBinding:
    position: 1
- id: split_file
  doc: Output split counts.
  type: string
  inputBinding:
    position: 2
- id: disc_file
  doc: Output discordant pairs.
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- svtk
- collect-pesr
