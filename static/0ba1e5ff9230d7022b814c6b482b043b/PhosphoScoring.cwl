class: CommandLineTool
id: PhosphoScoring.cwl
inputs:
- id: in
  doc: "*                       Input file with MS/MS spectra (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: id
  doc: "*                       Identification input file which contains a search\
    \ against a concatenated sequence database (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -id
- id: out
  doc: '*                      Identification output annotated with phosphorylation
    scores'
  type: File
  inputBinding:
    prefix: -out
- id: fragment_mass_tolerance
  doc: "Fragment mass tolerance for spectrum comparisons (default: '0.05' min: '0.0')"
  type: string
  inputBinding:
    prefix: -fragment_mass_tolerance
- id: fragment_mass_unit
  doc: "Unit of fragment mass tolerance (default: 'Da' valid: 'Da', 'ppm')"
  type: string
  inputBinding:
    prefix: -fragment_mass_unit
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
- PhosphoScoring
