class: CommandLineTool
id: ../../../HighResPrecursorMassCorrector.cwl
inputs:
- id: in
  doc: "*                                         Input file (centroided data) (valid\
    \ formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*                                        Output file (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -out
- id: out_csv
  doc: "Optional CSV output file for results on 'nearest_peak' or 'highest_intensity_peak'\
    \ algorithm (see corresponding subsection) containing columns: RT, uncorrectedMZ,\
    \ correctedMZ, deltaMZ. (valid formats: 'csv')"
  type: File
  inputBinding:
    prefix: -out_csv
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
- HighResPrecursorMassCorrector
