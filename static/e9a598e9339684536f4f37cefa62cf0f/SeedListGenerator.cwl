class: CommandLineTool
id: SeedListGenerator.cwl
inputs:
- id: in
  doc: "*         Input file (see below for details) (valid formats: 'mzML', 'idXML',\
    \ 'featureXML', 'consensusXML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "<file(s)>*     Output file(s) (valid formats: 'featureXML')"
  type: boolean
  inputBinding:
    prefix: -out
- id: use_peptide_mass
  doc: '[idXML input only] Use the monoisotopic mass of the best peptide hit for the
    m/z position (default: use precursor m/z)'
  type: boolean
  inputBinding:
    prefix: -use_peptide_mass
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
- SeedListGenerator
