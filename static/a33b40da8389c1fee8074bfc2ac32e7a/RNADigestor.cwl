class: CommandLineTool
id: RNADigestor.cwl
inputs:
- id: in_in
  doc: "*                 Input file containing RNA sequences (valid formats: 'fasta')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*                Output file containing sequence fragments (valid formats:\
    \ 'fasta')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_missed_cleavages
  doc: "The number of allowed missed cleavages (default: '1' min: '0')"
  type: long?
  inputBinding:
    prefix: -missed_cleavages
- id: in_min_length
  doc: "Minimum length of a fragment (default: '3')"
  type: long?
  inputBinding:
    prefix: -min_length
- id: in_max_length
  doc: "Maximum length of a fragment (default: '30')"
  type: long?
  inputBinding:
    prefix: -max_length
- id: in_enzyme
  doc: "Digestion enzyme (RNase) (default: 'RNase_T1' valid: 'unspecific cleavage',\
    \ 'no cleavage', 'RNase_T1')"
  type: long?
  inputBinding:
    prefix: -enzyme
- id: in_unique
  doc: Report each unique sequence fragment only once
  type: boolean?
  inputBinding:
    prefix: -unique
- id: in_ini
  doc: Use the given TOPP INI file
  type: File?
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long?
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File?
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean?
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "*                Output file containing sequence fragments (valid formats:\
    \ 'fasta')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- RNADigestor
