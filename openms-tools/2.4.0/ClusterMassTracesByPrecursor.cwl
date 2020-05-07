class: CommandLineTool
id: ClusterMassTracesByPrecursor.cwl
inputs:
- id: in_ms1
  doc: "*                    MS1 mass traces (valid formats: 'consensusXML')"
  type: File
  inputBinding:
    prefix: -in_ms1
- id: in_swath
  doc: "*                  MS2 / SWATH mass traces (valid formats: 'consensusXML')"
  type: File
  inputBinding:
    prefix: -in_swath
- id: out
  doc: "*                       Output file (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -out
- id: assign_unassigned_to_all
  doc: Assign unassigned MS2 fragments to all precursors (only for ms1_centrif)
  type: boolean
  inputBinding:
    prefix: -assign_unassigned_to_all
- id: min_pearson_correlation
  doc: "Minimal pearson correlation score to match elution profiles to each other.\
    \ (default: '0.7')"
  type: string
  inputBinding:
    prefix: -min_pearson_correlation
- id: max_lag
  doc: "Maximal lag (e.g. by how many spectra the peak may be shifted at most). This\
    \ parameter will depend on your chromatographic setup but a number between 1 and\
    \ 3 is usually sens ible. (default: '1')"
  type: string
  inputBinding:
    prefix: -max_lag
- id: min_nr_ions
  doc: "Minimal number of ions to report a spectrum. (default: '3')"
  type: string
  inputBinding:
    prefix: -min_nr_ions
- id: max_rt_apex_difference
  doc: "Maximal difference of the apex in retention time (in seconds). This is a hard\
    \ parameter, all profiles further away will not be considered at all. (default:\
    \ '5')"
  type: string
  inputBinding:
    prefix: -max_rt_apex_difference
- id: swath_lower
  doc: "Swath lower isolation window (default: '0')"
  type: string
  inputBinding:
    prefix: -swath_lower
- id: swath_upper
  doc: "Swath upper isolation window (default: '0')"
  type: string
  inputBinding:
    prefix: -swath_upper
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
- ClusterMassTracesByPrecursor
