class: CommandLineTool
id: create_report.cwl
inputs:
- id: sites
  doc: vcf file defining variants, required
  type: string
  inputBinding:
    position: 0
- id: fast_a
  doc: reference fasta file, required
  type: string
  inputBinding:
    position: 1
- id: ideogram
  doc: ideogram file in UCSC cytoIdeo format
  type: string
  inputBinding:
    prefix: --ideogram
- id: tracks
  doc: list of track files
  type: string[]
  inputBinding:
    prefix: --tracks
- id: template
  doc: html template file
  type: string
  inputBinding:
    prefix: --template
- id: output
  doc: output file name
  type: string
  inputBinding:
    prefix: --output
- id: info_columns
  doc: list of VCF info field names to include in variant table
  type: string[]
  inputBinding:
    prefix: --info-columns
- id: info_columns_prefixes
  doc: list of prefixes of VCF info field names to include in variant table
  type: string[]
  inputBinding:
    prefix: --info-columns-prefixes
- id: sample_columns
  doc: list of VCF sample/format field names to include in variant table
  type: string[]
  inputBinding:
    prefix: --sample-columns
- id: flanking
  doc: genomic region to include either side of variant
  type: string
  inputBinding:
    prefix: --flanking
- id: standalone
  doc: Print more data
  type: boolean
  inputBinding:
    prefix: --standalone
outputs: []
cwlVersion: v1.1
baseCommand:
- create_report
