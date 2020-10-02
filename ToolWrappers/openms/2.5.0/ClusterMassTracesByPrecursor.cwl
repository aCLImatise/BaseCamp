class: CommandLineTool
id: ClusterMassTracesByPrecursor.cwl
inputs:
- id: in_in_ms_one
  doc: "*                    MS1 mass traces (valid formats: 'consensusXML')"
  type: File
  inputBinding:
    prefix: -in_ms1
- id: in_in_swath
  doc: "*                  MS2 / SWATH mass traces (valid formats: 'consensusXML')"
  type: File
  inputBinding:
    prefix: -in_swath
- id: in_out
  doc: "*                       Output file (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -out
- id: in_assign_unassigned_to_all
  doc: Assign unassigned MS2 fragments to all precursors (only for ms1_centrif)
  type: boolean
  inputBinding:
    prefix: -assign_unassigned_to_all
- id: in_min_pearson_correlation
  doc: "Minimal pearson correlation score to match elution profiles to each other.\
    \ (default: '0.7')"
  type: double
  inputBinding:
    prefix: -min_pearson_correlation
- id: in_max_lag
  doc: "Maximal lag (e.g. by how many spectra the peak may be shifted at most). This\
    \ parameter will depend on your chromatographic setup but a number between 1 and\
    \ 3 is usually sensible. (default: '1')"
  type: long
  inputBinding:
    prefix: -max_lag
- id: in_min_nr_ions
  doc: "Minimal number of ions to report a spectrum. (default: '3')"
  type: long
  inputBinding:
    prefix: -min_nr_ions
- id: in_max_rt_apex_difference
  doc: "Maximal difference of the apex in retention time (in seconds). This is a hard\
    \ parameter, all profiles further away will not be considered at all. (default:\
    \ '5.0')"
  type: double
  inputBinding:
    prefix: -max_rt_apex_difference
- id: in_swath_lower
  doc: "Swath lower isolation window (default: '0.0')"
  type: double
  inputBinding:
    prefix: -swath_lower
- id: in_swath_upper
  doc: "Swath upper isolation window (default: '0.0')"
  type: double
  inputBinding:
    prefix: -swath_upper
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
  doc: "*                       Output file (valid formats: 'mzML')"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- ClusterMassTracesByPrecursor
