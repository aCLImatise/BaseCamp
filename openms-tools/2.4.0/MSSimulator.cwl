class: CommandLineTool
id: MSSimulator.cwl
inputs:
- id: in
  doc: "*       Input protein sequences (valid formats: 'FASTA')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "Output: simulated MS raw (profile) data (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -out
- id: out_pm
  doc: "Output: ground-truth picked (centroided) MS data (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -out_pm
- id: out_fm
  doc: "Output: ground-truth features (valid formats: 'featureXML')"
  type: File
  inputBinding:
    prefix: -out_fm
- id: out_cm
  doc: "Output: ground-truth features, grouping ESI charge variants of each parent\
    \ peptide (valid formats: 'consensusXML')"
  type: File
  inputBinding:
    prefix: -out_cm
- id: out_lcm
  doc: "Output: ground-truth features, grouping labeled variants (valid formats: 'consensusXML')"
  type: File
  inputBinding:
    prefix: -out_lcm
- id: out_cnt_m
  doc: "Output: ground-truth features caused by contaminants (valid formats: 'featureXML')"
  type: File
  inputBinding:
    prefix: -out_cntm
- id: out_id
  doc: "Output: ground-truth MS2 peptide identifications (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out_id
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
- id: algorithm
  doc: Algorithm parameters section
  type: boolean
  inputBinding:
    prefix: '- algorithm'
outputs: []
cwlVersion: v1.1
baseCommand:
- MSSimulator
