class: CommandLineTool
id: HighResPrecursorMassCorrector.cwl
inputs:
- id: in_in
  doc: "*                                 Input file (centroided data) (valid formats:\
    \ 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*                                Output file (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -out
- id: in_highest_intensity_peak
  doc: ":mz_tolerance <num>  The precursor mass tolerance to find the highest intensity\
    \ MS1 peak (Da). Suggested value 1/max. expected charge. (Disable method by setting\
    \ value to 0.0) (default: '0')"
  type: boolean
  inputBinding:
    prefix: -highest_intensity_peak
- id: in_out_csv
  doc: "Optional CSV output file for results on 'nearest_peak' or 'highest_intensity_peak'\
    \ algorithm (see corresponding subsection) containing columns: RT, uncorrectedMZ,\
    \ correctedMZ, deltaMZ. (valid formats: 'csv')"
  type: File
  inputBinding:
    prefix: -out_csv
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
- id: out_out
  doc: "*                                Output file (valid formats: 'mzML')"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
- id: out_out_csv
  doc: "Optional CSV output file for results on 'nearest_peak' or 'highest_intensity_peak'\
    \ algorithm (see corresponding subsection) containing columns: RT, uncorrectedMZ,\
    \ correctedMZ, deltaMZ. (valid formats: 'csv')"
  type: File
  outputBinding:
    glob: $(inputs.in_out_csv)
cwlVersion: v1.1
baseCommand:
- HighResPrecursorMassCorrector
