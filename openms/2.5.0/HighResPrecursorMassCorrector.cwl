class: CommandLineTool
id: HighResPrecursorMassCorrector.cwl
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
- id: feature
  doc: ":in <file>                                  Features used to correct precursor\
    \ masses. (valid formats: 'featureXML')"
  type: boolean
  inputBinding:
    prefix: -feature
- id: feature
  doc: ":mz_tolerance <num>                         The precursor mass tolerance.\
    \ Used to determine matching to feature mass traces. (default: '5.0')"
  type: boolean
  inputBinding:
    prefix: -feature
- id: feature
  doc: ":mz_tolerance_unit <choice>                 Unit of precursor mass tolerance\
    \ (default: 'ppm' valid: 'Da', 'ppm')"
  type: boolean
  inputBinding:
    prefix: -feature
- id: feature
  doc: ":rt_tolerance <num>                         Additional retention time tolerance\
    \ added to feature boundaries. (default: '0.0')"
  type: boolean
  inputBinding:
    prefix: -feature
- id: feature
  doc: :believe_charge                             Assume precursor charge to be correct.
  type: boolean
  inputBinding:
    prefix: -feature
- id: feature
  doc: :keep_original                              Make a copy of the precursor and
    MS2 (true) or discard the original (false).
  type: boolean
  inputBinding:
    prefix: -feature
- id: feature
  doc: :assign_all_matching                        Correct a precursor using all matching
    features (true) or only the nearest (false). Only evaluated if copies are created
    (feature:keep_original).
  type: boolean
  inputBinding:
    prefix: -feature
- id: nearest_peak
  doc: ":mz_tolerance <num>                    The precursor mass tolerance to find\
    \ the closest MS1 peak. (Disable method by setting value to 0.0) (default: '0.0')"
  type: boolean
  inputBinding:
    prefix: -nearest_peak
- id: nearest_peak
  doc: ":mz_tolerance_unit <choice>            Unit of precursor mass tolerance (default:\
    \ 'ppm' valid: 'Da', 'ppm')"
  type: boolean
  inputBinding:
    prefix: -nearest_peak
- id: highest_intensity_peak
  doc: ":mz_tolerance <num>          The precursor mass tolerance to find the highest\
    \ intensity MS1 peak. Suggested value 1/max. expected charge. (Disable method\
    \ by setting value to 0.0) (defau lt: '0.0')"
  type: boolean
  inputBinding:
    prefix: -highest_intensity_peak
- id: highest_intensity_peak
  doc: ":mz_tolerance_unit <choice>  Unit of precursor mass tolerance (default: 'ppm'\
    \ valid: 'Da', 'ppm')"
  type: boolean
  inputBinding:
    prefix: -highest_intensity_peak
- id: out_csv
  doc: "Optional CSV output file for results on 'nearest_peak' or 'highest_intensity_peak'\
    \ algorithm (see corresponding subsection) containing columns: RT, uncorrec tedMZ,\
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
