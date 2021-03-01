class: CommandLineTool
id: ncbi_database_fetcher.sh.cwl
inputs:
- id: in_key_terms_included
  doc: of key terms separated by space to be INCLUDED in sequences title
  type: string?
  inputBinding:
    prefix: -y
- id: in_key_terms_excluded
  doc: of key terms separated by space to be EXCLUDED in sequences title
  type: string?
  inputBinding:
    prefix: -n
- id: in_to_filter
  doc: to filter
  type: string?
  inputBinding:
    prefix: -O
- id: in_type_default_nucleotide
  doc: type, default nucleotide
  type: string?
  inputBinding:
    prefix: -d
- id: in_directory_optional_default
  doc: directory (optional). By default the file is placed in cwd
  type: File?
  inputBinding:
    prefix: -o
- id: in_name_optional_default
  doc: name (optional). By default is the first term used as query
  type: File?
  inputBinding:
    prefix: -f
- id: in_usage_message
  doc: usage message
  type: string?
  inputBinding:
    prefix: -q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ncbi_database_fetcher.sh
