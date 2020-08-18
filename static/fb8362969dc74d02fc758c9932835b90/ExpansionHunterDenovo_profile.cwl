class: CommandLineTool
id: ../../../ExpansionHunterDenovo_profile.cwl
inputs:
- id: reads
  doc: BAM or CRAM file with aligned reads
  type: string
  inputBinding:
    prefix: --reads
- id: reference
  doc: FASTA file with reference assembly
  type: string
  inputBinding:
    prefix: --reference
- id: output_prefix
  doc: Prefix for the output files
  type: string
  inputBinding:
    prefix: --output-prefix
- id: min_unit_len
  doc: (=2)     Shortest repeat unit to consider
  type: string
  inputBinding:
    prefix: --min-unit-len
- id: max_unit_len
  doc: (=20)    Longest repeat unit to consider
  type: string
  inputBinding:
    prefix: --max-unit-len
- id: min_anchor_mapq
  doc: (=50) Minimum MAPQ of an anchor read
  type: string
  inputBinding:
    prefix: --min-anchor-mapq
- id: max_irr_mapq
  doc: (=40)    Maximum MAPQ of an in-repeat read
  type: string
  inputBinding:
    prefix: --max-irr-mapq
- id: log_reads
  doc: Log informative reads
  type: boolean
  inputBinding:
    prefix: --log-reads
outputs: []
cwlVersion: v1.1
baseCommand:
- ExpansionHunterDenovo
- profile
