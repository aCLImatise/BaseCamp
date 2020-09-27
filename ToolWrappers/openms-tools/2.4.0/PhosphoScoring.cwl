class: CommandLineTool
id: PhosphoScoring.cwl
inputs:
- id: in_in
  doc: "*                       Input file with MS/MS spectra (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: in_id
  doc: "*                       Identification input file which contains a search\
    \ against a concatenated sequence database (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -id
- id: in_out
  doc: '*                      Identification output annotated with phosphorylation
    scores'
  type: File
  inputBinding:
    prefix: -out
- id: in_fragment_mass_tolerance
  doc: "Fragment mass tolerance for spectrum comparisons (default: '0.05' min: '0')"
  type: long
  inputBinding:
    prefix: -fragment_mass_tolerance
- id: in_fragment_mass_unit
  doc: "Unit of fragment mass tolerance (default: 'Da' valid: 'Da', 'ppm')"
  type: string
  inputBinding:
    prefix: -fragment_mass_unit
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
- PhosphoScoring
