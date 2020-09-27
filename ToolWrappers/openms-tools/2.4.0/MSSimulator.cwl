class: CommandLineTool
id: MSSimulator.cwl
inputs:
- id: in_in
  doc: "*       Input protein sequences (valid formats: 'FASTA')"
  type: string
  inputBinding:
    prefix: -in
- id: in_out
  doc: "Output: simulated MS raw (profile) data (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -out
- id: in_out_pm
  doc: "Output: ground-truth picked (centroided) MS data (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -out_pm
- id: in_out_fm
  doc: "Output: ground-truth features (valid formats: 'featureXML')"
  type: File
  inputBinding:
    prefix: -out_fm
- id: in_out_cm
  doc: "Output: ground-truth features, grouping ESI charge variants of each parent\
    \ peptide (valid formats: 'consensusXML')"
  type: File
  inputBinding:
    prefix: -out_cm
- id: in_out_lcm
  doc: "Output: ground-truth features, grouping labeled variants (valid formats: 'consensusXML')"
  type: File
  inputBinding:
    prefix: -out_lcm
- id: in_out_cnt_m
  doc: "Output: ground-truth features caused by contaminants (valid formats: 'featureXML')"
  type: File
  inputBinding:
    prefix: -out_cntm
- id: in_out_id
  doc: "Output: ground-truth MS2 peptide identifications (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out_id
- id: in_ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- MSSimulator
