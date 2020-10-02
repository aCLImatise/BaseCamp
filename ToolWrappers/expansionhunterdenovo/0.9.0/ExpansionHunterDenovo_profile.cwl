class: CommandLineTool
id: ExpansionHunterDenovo_profile.cwl
inputs:
- id: in_reads
  doc: BAM or CRAM file with aligned reads
  type: File
  inputBinding:
    prefix: --reads
- id: in_reference
  doc: FASTA file with reference assembly
  type: File
  inputBinding:
    prefix: --reference
- id: in_output_prefix
  doc: Prefix for the output files
  type: string
  inputBinding:
    prefix: --output-prefix
- id: in_min_unit_len
  doc: (=2)     Shortest repeat unit to consider
  type: long
  inputBinding:
    prefix: --min-unit-len
- id: in_max_unit_len
  doc: (=20)    Longest repeat unit to consider
  type: long
  inputBinding:
    prefix: --max-unit-len
- id: in_min_anchor_mapq
  doc: (=50) Minimum MAPQ of an anchor read
  type: long
  inputBinding:
    prefix: --min-anchor-mapq
- id: in_max_irr_mapq
  doc: (=40)    Maximum MAPQ of an in-repeat read
  type: long
  inputBinding:
    prefix: --max-irr-mapq
- id: in_log_reads
  doc: Log informative reads
  type: boolean
  inputBinding:
    prefix: --log-reads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ExpansionHunterDenovo
- profile
