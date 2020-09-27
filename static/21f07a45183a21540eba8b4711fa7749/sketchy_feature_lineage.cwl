class: CommandLineTool
id: sketchy_feature_lineage.cwl
inputs:
- id: in_data
  doc: "Path to data file to summarize trait data from\n[required]  [required]"
  type: File
  inputBinding:
    prefix: --data
- id: in_lineage
  doc: "Trait to show summary for; columns in data file\n[required]"
  type: File
  inputBinding:
    prefix: --lineage
- id: in_output
  doc: "Path to legacy key file to extract identifiers\n[lineage.index.tsv]"
  type: File
  inputBinding:
    prefix: --output
- id: in_summary
  doc: Print summary of lineage features to terminal [false]
  type: boolean
  inputBinding:
    prefix: --summary
- id: in_file_path
  doc: Path to collect files for this lineage from [none]
  type: File
  inputBinding:
    prefix: --file_path
- id: in_pattern
  doc: "Pattern to match files with their name identifier\n[*.fastq.gz]"
  type: string
  inputBinding:
    prefix: --pattern
- id: in_key
  doc: Path to legacy key file to extract identifiers [none]
  type: File
  inputBinding:
    prefix: --key
- id: in_re_index
  doc: Reindex the lineage table [none]
  type: boolean
  inputBinding:
    prefix: --reindex
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sketchy
- feature
- lineage
