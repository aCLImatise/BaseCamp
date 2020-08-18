class: CommandLineTool
id: ../../../bazam.cwl
inputs:
- id: bam
  doc: BAM file to extract read pairs from
  type: string
  inputBinding:
    prefix: -bam
- id: dr
  doc: 'Specify a read name to debug: processing of the read will be verbosey printed'
  type: string
  inputBinding:
    prefix: -dr
- id: filter
  doc: Filter using specified groovy expression
  type: string
  inputBinding:
    prefix: --filter
- id: gene
  doc: Extract region of given gene
  type: string
  inputBinding:
    prefix: -gene
- id: regions
  doc: Regions to include reads (and mates of reads) from
  type: string
  inputBinding:
    prefix: --regions
- id: concurrency_parameter
  doc: Concurrency parameter (4)
  type: string
  inputBinding:
    prefix: -n
- id: name_pos
  doc: Add original position to the read names
  type: boolean
  inputBinding:
    prefix: -namepos
- id: output_file
  doc: Output file
  type: string
  inputBinding:
    prefix: -o
- id: pad
  doc: Amount to pad regions by (0)
  type: string
  inputBinding:
    prefix: -pad
- id: r_one
  doc: Output for R1 if extracting FASTQ in separate files
  type: string
  inputBinding:
    prefix: -r1
- id: r_two
  doc: Output for R2 if extracting FASTQ in separate files
  type: string
  inputBinding:
    prefix: -r2
- id: sharding_factor_format
  doc: 'Sharding factor: format <n>,<N>: output only reads belonging to shard n of
    N'
  type: string
  inputBinding:
    prefix: -s
- id: jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: java
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bazam
