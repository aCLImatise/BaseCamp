#!/usr/bin/env cwl-runner

baseCommand:
- ClusterMassTracesByPrecursor
class: CommandLineTool
cwlVersion: v1.0
id: clustermasstracesbyprecursor
inputs:
- doc: "*                    MS1 mass traces (valid formats: 'consensusXML')"
  id: in_ms1
  inputBinding:
    prefix: -in_ms1
  type: File
- doc: "*                  MS2 / SWATH mass traces (valid formats: 'consensusXML')"
  id: in_swath
  inputBinding:
    prefix: -in_swath
  type: File
- doc: "*                       Output file (valid formats: 'mzML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: Assign unassigned MS2 fragments to all precursors (only for ms1_centrif)
  id: assign_unassigned_to_all
  inputBinding:
    prefix: -assign_unassigned_to_all
  type: boolean
- doc: "Minimal pearson correlation score to match elution profiles to each other.\
    \ (default: '0.7')"
  id: min_pearson_correlation
  inputBinding:
    prefix: -min_pearson_correlation
  type: string
- doc: "Maximal lag (e.g. by how many spectra the peak may be shifted at most). This\
    \ parameter will depend on your chromatographic setup but a number between 1 and\
    \ 3 is usually sens ible. (default: '1')"
  id: max_lag
  inputBinding:
    prefix: -max_lag
  type: string
- doc: "Minimal number of ions to report a spectrum. (default: '3')"
  id: min_nr_ions
  inputBinding:
    prefix: -min_nr_ions
  type: string
- doc: "Maximal difference of the apex in retention time (in seconds). This is a hard\
    \ parameter, all profiles further away will not be considered at all. (default:\
    \ '5')"
  id: max_rt_apex_difference
  inputBinding:
    prefix: -max_rt_apex_difference
  type: string
- doc: "Swath lower isolation window (default: '0')"
  id: swath_lower
  inputBinding:
    prefix: -swath_lower
  type: string
- doc: "Swath upper isolation window (default: '0')"
  id: swath_upper
  inputBinding:
    prefix: -swath_upper
  type: string
- doc: Use the given TOPP INI file
  id: ini
  inputBinding:
    prefix: -ini
  type: File
- doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  id: threads
  inputBinding:
    prefix: -threads
  type: string
- doc: Writes the default configuration file
  id: write_ini
  inputBinding:
    prefix: -write_ini
  type: File
- doc: Shows all options (including advanced)
  id: helphelp
  inputBinding:
    prefix: --helphelp
  type: boolean
