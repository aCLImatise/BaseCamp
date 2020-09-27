class: CommandLineTool
id: entrcmd.cwl
inputs:
- id: in_initial_database_optionaldefault
  doc: "Initial database [String]  Optional\ndefault = m"
  type: boolean
  inputBinding:
    prefix: -d
- id: in_boolean_expression_optional
  doc: Boolean expression [String]  Optional
  type: boolean
  inputBinding:
    prefix: -e
- id: in_commadelimited_list_uids
  doc: Comma-delimited list of UIDs [String]  Optional
  type: boolean
  inputBinding:
    prefix: -u
- id: in_program_of_commands
  doc: Program of commands [String]
  type: boolean
  inputBinding:
    prefix: -p
- id: in_display_status_report
  doc: "Display status report [T/F]  Optional\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -s
- id: in_produce_wwwhtml_formatted
  doc: Produce WWW/HTML formatted output (recommended value is /htbin) [String]  Optional
  type: boolean
  inputBinding:
    prefix: -w
- id: in_www_output_use
  doc: "For WWW output, use Forms [T/F]  Optional\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -f
- id: in_www_output_forms
  doc: "'Check' WWW output Forms [T/F]  Optional\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -c
- id: in_name_export_optional
  doc: Name of export file for named UID list [String]  Optional
  type: boolean
  inputBinding:
    prefix: -x
- id: in_commadelimited_list_import
  doc: Comma-delimited list of files to import for named UID list [String]  Optional
  type: boolean
  inputBinding:
    prefix: -i
- id: in_produce_list_terms
  doc: Produce a list of terms (term) [String]  Optional
  type: boolean
  inputBinding:
    prefix: -t
- id: in_taxonomy_lookup_optional
  doc: Taxonomy lookup [String]  Optional
  type: boolean
  inputBinding:
    prefix: -l
- id: in_onthefly_neighboring_optional
  doc: On-the-fly neighboring [File In]  Optional
  type: boolean
  inputBinding:
    prefix: -n
- id: in_output_file_default
  doc: "Output file [File Out]\ndefault = stdout"
  type: File
  inputBinding:
    prefix: -o
- id: in_use_wwwstyle_encoding
  doc: "Use WWW-style encoding for special input characters [T/F]  Optional\ndefault\
    \ = T"
  type: boolean
  inputBinding:
    prefix: -g
- id: in_sequences_id_repository
  doc: "Get sequences from ID Repository [T/F]  Optional\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -r
- id: in_complexity_bioseq_bioseq
  doc: "Complexity (1=bioseq only, 2=bioseq set, 3=nuc-prot set) [Integer]  Optional\n\
    default = 3\n"
  type: boolean
  inputBinding:
    prefix: -y
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_default
  doc: "Output file [File Out]\ndefault = stdout"
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_default)
cwlVersion: v1.1
baseCommand:
- entrcmd
