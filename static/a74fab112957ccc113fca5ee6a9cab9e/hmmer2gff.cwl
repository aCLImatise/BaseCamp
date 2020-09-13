class: CommandLineTool
id: ../../../hmmer2gff.cwl
inputs:
- id: in_verbose
  doc: 'more verbose - includes debug messages (default: 20)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: "less verbose - only error and critical messages\n(default: None)"
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_cite
  doc: Show citation for the framework
  type: boolean
  inputBinding:
    prefix: --cite
- id: in_manual
  doc: Show the script manual
  type: boolean
  inputBinding:
    prefix: --manual
- id: in_discard
  doc: "Evalue over which an hit will be discarded (default:\n0.05)"
  type: double
  inputBinding:
    prefix: --discard
- id: in_disable_evalue
  doc: 'Disable Evalue filter (default: False)'
  type: boolean
  inputBinding:
    prefix: --disable-evalue
- id: in_no_custom_profiles
  doc: "Profiles names are not in the custom format (default:\nTrue)"
  type: boolean
  inputBinding:
    prefix: --no-custom-profiles
- id: in_database
  doc: "Database from which the profiles are generated \" +\"\n(e.g. PFAM) (default:\
    \ CUSTOM)"
  type: string
  inputBinding:
    prefix: --database
- id: in_feature_type
  doc: 'Type of feature (e.g. gene) (default: gene)'
  type: string
  inputBinding:
    prefix: --feature-type
- id: in_no_frame
  doc: "Set if the sequences were not translated with\ntranslate_seq (default: False)\n"
  type: boolean
  inputBinding:
    prefix: --no-frame
- id: in_o
  doc: ''
  type: boolean
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hmmer2gff
