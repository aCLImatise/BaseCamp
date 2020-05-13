class: CommandLineTool
id: sketchy_feature_lineage.cwl
inputs:
- id: data
  doc: Path to data file to summarize trait data from [required]  [required]
  type: File
  inputBinding:
    prefix: --data
- id: lineage
  doc: Trait to show summary for; columns in data file [required]
  type: string
  inputBinding:
    prefix: --lineage
- id: output
  doc: Path to legacy key file to extract identifiers [lineage.index.tsv]
  type: File
  inputBinding:
    prefix: --output
- id: summary
  doc: Print summary of lineage features to terminal [false]
  type: boolean
  inputBinding:
    prefix: --summary
- id: file_path
  doc: Path to collect files for this lineage from [none]
  type: File
  inputBinding:
    prefix: --file_path
- id: pattern
  doc: Pattern to match files with their name identifier [*.fastq.gz]
  type: string
  inputBinding:
    prefix: --pattern
- id: key
  doc: Path to legacy key file to extract identifiers [none]
  type: File
  inputBinding:
    prefix: --key
- id: re_index
  doc: Reindex the lineage table [none]
  type: boolean
  inputBinding:
    prefix: --reindex
outputs: []
cwlVersion: v1.1
baseCommand:
- sketchy
- feature
- lineage
