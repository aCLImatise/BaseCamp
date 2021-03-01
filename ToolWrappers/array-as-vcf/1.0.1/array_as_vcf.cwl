class: CommandLineTool
id: array_as_vcf.cwl
inputs:
- id: in_path
  doc: 'Path to array file (default: None)'
  type: File?
  inputBinding:
    prefix: --path
- id: in_build
  doc: 'Genome build (default: GRCh37)'
  type: string?
  inputBinding:
    prefix: --build
- id: in_sample_name
  doc: 'Name of sample in VCF file (default: None)'
  type: File?
  inputBinding:
    prefix: --sample-name
- id: in_chr_prefix
  doc: 'Prefix to chromosome names (default: None)'
  type: string?
  inputBinding:
    prefix: --chr-prefix
- id: in_lookup_table
  doc: "Path to existing lookup table for rsIDs (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --lookup-table
- id: in_dump
  doc: 'Path to write generated lookup table (default: None)'
  type: File?
  inputBinding:
    prefix: --dump
- id: in_encoding
  doc: 'Encoding of the array file (default: UTF-8)'
  type: File?
  inputBinding:
    prefix: --encoding
- id: in_exclude_assays
  doc: 'Assay IDs for OpenArray to ignore (default: None)'
  type: string[]
  inputBinding:
    prefix: --exclude-assays
- id: in_no_ensembl_lookup
  doc: 'Lookup missing rsIDs on Ensembl (default: False)'
  type: boolean?
  inputBinding:
    prefix: --no-ensembl-lookup
- id: in_log_level
  doc: "Set the verbosity of the logger (default: INFO)\n"
  type: string?
  inputBinding:
    prefix: --log-level
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- array-as-vcf
