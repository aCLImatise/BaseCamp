class: CommandLineTool
id: bazam.cwl
inputs:
- id: in_bam
  doc: BAM file to extract read pairs from
  type: File?
  inputBinding:
    prefix: -bam
- id: in_dr
  doc: "Specify a read name to debug: processing of the read\nwill be verbosey printed"
  type: string?
  inputBinding:
    prefix: -dr
- id: in_filter
  doc: Filter using specified groovy expression
  type: string?
  inputBinding:
    prefix: --filter
- id: in_gene
  doc: Extract region of given gene
  type: string?
  inputBinding:
    prefix: -gene
- id: in_regions
  doc: Regions to include reads (and mates of reads) from
  type: string?
  inputBinding:
    prefix: --regions
- id: in_concurrency_parameter
  doc: Concurrency parameter (4)
  type: long?
  inputBinding:
    prefix: -n
- id: in_name_pos
  doc: Add original position to the read names
  type: boolean?
  inputBinding:
    prefix: -namepos
- id: in_output_file
  doc: Output file
  type: File?
  inputBinding:
    prefix: -o
- id: in_pad
  doc: Amount to pad regions by (0)
  type: long?
  inputBinding:
    prefix: -pad
- id: in_r_one
  doc: Output for R1 if extracting FASTQ in separate files
  type: long?
  inputBinding:
    prefix: -r1
- id: in_r_two
  doc: Output for R2 if extracting FASTQ in separate files
  type: long?
  inputBinding:
    prefix: -r2
- id: in_sharding_factor_format
  doc: "Sharding factor: format <n>,<N>: output only reads\nbelonging to shard n of\
    \ N"
  type: string?
  inputBinding:
    prefix: -s
- id: in_jar
  doc: ''
  type: string?
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- bazam
