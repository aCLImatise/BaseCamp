class: CommandLineTool
id: aav.cwl
inputs:
- id: path
  doc: 'Path to array file (default: None)'
  type: File
  inputBinding:
    prefix: --path
- id: build
  doc: 'Genome build (default: GRCh37)'
  type: string
  inputBinding:
    prefix: --build
- id: sample_name
  doc: 'Name of sample in VCF file (default: None)'
  type: string
  inputBinding:
    prefix: --sample-name
- id: chr_prefix
  doc: 'Prefix to chromosome names (default: None)'
  type: string
  inputBinding:
    prefix: --chr-prefix
- id: lookup_table
  doc: 'Path to existing lookup table for rsIDs (default: None)'
  type: string
  inputBinding:
    prefix: --lookup-table
- id: dump
  doc: 'Path to write generated lookup table (default: None)'
  type: string
  inputBinding:
    prefix: --dump
- id: encoding
  doc: 'Encoding of the array file (default: UTF-8)'
  type: string
  inputBinding:
    prefix: --encoding
- id: exclude_assays
  doc: 'Assay IDs for OpenArray to ignore (default: None)'
  type: string[]
  inputBinding:
    prefix: --exclude-assays
- id: no_ensembl_lookup
  doc: 'Lookup missing rsIDs on Ensembl (default: False)'
  type: boolean
  inputBinding:
    prefix: --no-ensembl-lookup
- id: log_level
  doc: 'Set the verbosity of the logger (default: INFO)'
  type: string
  inputBinding:
    prefix: --log-level
outputs: []
cwlVersion: v1.1
baseCommand:
- aav
