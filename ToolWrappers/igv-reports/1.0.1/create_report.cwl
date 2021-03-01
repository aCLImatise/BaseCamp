class: CommandLineTool
id: create_report.cwl
inputs:
- id: in_type
  doc: "Report type. Possible values are mutation and\njunctions. Default is mutation"
  type: string?
  inputBinding:
    prefix: --type
- id: in_ideogram
  doc: ideogram file in UCSC cytoIdeo format
  type: File?
  inputBinding:
    prefix: --ideogram
- id: in_tracks
  doc: list of track files
  type: string[]
  inputBinding:
    prefix: --tracks
- id: in_track_config
  doc: track json file
  type: string[]
  inputBinding:
    prefix: --track-config
- id: in_template
  doc: html template file
  type: File?
  inputBinding:
    prefix: --template
- id: in_output
  doc: output file name
  type: File?
  inputBinding:
    prefix: --output
- id: in_info_columns
  doc: "list of VCF info field names to include in variant\ntable"
  type: string[]
  inputBinding:
    prefix: --info-columns
- id: in_info_columns_prefixes
  doc: "list of prefixes of VCF info field names to include in\nvariant table"
  type: string[]
  inputBinding:
    prefix: --info-columns-prefixes
- id: in_sample_columns
  doc: "list of VCF sample/format field names to include in\nvariant table"
  type: string[]
  inputBinding:
    prefix: --sample-columns
- id: in_flanking
  doc: genomic region to include either side of variant
  type: string?
  inputBinding:
    prefix: --flanking
- id: in_standalone
  doc: Print more data
  type: boolean?
  inputBinding:
    prefix: --standalone
- id: in_title
  doc: optional title string
  type: string?
  inputBinding:
    prefix: --title
- id: in_sites
  doc: vcf file defining variants, required
  type: string
  inputBinding:
    position: 0
- id: in_fast_a
  doc: reference fasta file, required
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output file name
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- create_report
