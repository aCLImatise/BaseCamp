class: CommandLineTool
id: hmmer2gff.cwl
inputs:
- id: verbose
  doc: 'more verbose - includes debug messages (default: 20)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: 'less verbose - only error and critical messages (default: None)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: cite
  doc: Show citation for the framework
  type: boolean
  inputBinding:
    prefix: --cite
- id: manual
  doc: Show the script manual
  type: boolean
  inputBinding:
    prefix: --manual
- id: o
  doc: '[OUTPUT_FILE], --output-file [OUTPUT_FILE]'
  type: boolean
  inputBinding:
    prefix: -o
- id: discard
  doc: 'Evalue over which an hit will be discarded (default: 0.05)'
  type: string
  inputBinding:
    prefix: --discard
- id: disable_evalue
  doc: 'Disable Evalue filter (default: False)'
  type: boolean
  inputBinding:
    prefix: --disable-evalue
- id: no_custom_profiles
  doc: 'Profiles names are not in the custom format (default: True)'
  type: boolean
  inputBinding:
    prefix: --no-custom-profiles
- id: database
  doc: 'Database from which the profiles are generated " +" (e.g. PFAM) (default:
    CUSTOM)'
  type: string
  inputBinding:
    prefix: --database
- id: feature_type
  doc: 'Type of feature (e.g. gene) (default: gene)'
  type: string
  inputBinding:
    prefix: --feature-type
- id: no_frame
  doc: 'Set if the sequences were not translated with translate_seq (default: False)'
  type: boolean
  inputBinding:
    prefix: --no-frame
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmer2gff
