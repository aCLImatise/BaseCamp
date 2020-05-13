class: CommandLineTool
id: RNADigestor.cwl
inputs:
- id: in
  doc: "*                 Input file containing RNA sequences (valid formats: 'fasta')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*                Output file containing sequence fragments (valid formats:\
    \ 'fasta')"
  type: File
  inputBinding:
    prefix: -out
- id: missed_cleavages
  doc: "The number of allowed missed cleavages (default: '1' min: '0')"
  type: string
  inputBinding:
    prefix: -missed_cleavages
- id: min_length
  doc: "Minimum length of a fragment (default: '3')"
  type: string
  inputBinding:
    prefix: -min_length
- id: max_length
  doc: "Maximum length of a fragment (default: '30')"
  type: string
  inputBinding:
    prefix: -max_length
- id: enzyme
  doc: "Digestion enzyme (RNase) (default: 'RNase_T1' valid: 'RNase_T1', 'cusativin',\
    \ 'RNase_U2', 'RNase_A', 'RNase_MC1', 'RNase_H', 'no cleavage', 'unspecific cleavage')"
  type: string
  inputBinding:
    prefix: -enzyme
- id: unique
  doc: Report each unique sequence fragment only once
  type: boolean
  inputBinding:
    prefix: -unique
- id: cdna
  doc: Input file contains cDNA sequences - replace 'T' with 'U')
  type: boolean
  inputBinding:
    prefix: -cdna
- id: ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: string
  inputBinding:
    prefix: -threads
- id: write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs: []
cwlVersion: v1.1
baseCommand:
- RNADigestor
