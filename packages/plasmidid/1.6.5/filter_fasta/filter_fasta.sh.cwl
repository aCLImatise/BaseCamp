class: CommandLineTool
id: filter_fasta.sh.cwl
inputs:
- id: in_file_to_filter
  doc: file to filter
  type: File?
  inputBinding:
    prefix: -i
- id: in_directory_optional_default
  doc: directory (optional). By default the file is replaced in the same location
  type: File?
  inputBinding:
    prefix: -o
- id: in_name_optional_default
  doc: name (optional). By default is the same as -f file with .fasta extension
  type: File?
  inputBinding:
    prefix: -n
- id: in_key_terms_separated
  doc: of key terms separated by space
  type: string?
  inputBinding:
    prefix: -l
- id: in_term_discard_sequences
  doc: term to discard sequences with terms (Negative filter)
  type: string?
  inputBinding:
    prefix: -N
- id: in_filter_filter_file
  doc: 'filter: filter any file with a list of keys'
  type: File?
  inputBinding:
    prefix: -G
- id: in_list_terms_filter
  doc: with a list of terms to filter
  type: File?
  inputBinding:
    prefix: -f
- id: in_usage_message
  doc: usage message
  type: string?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/plasmidid:1.6.5--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- filter_fasta.sh
