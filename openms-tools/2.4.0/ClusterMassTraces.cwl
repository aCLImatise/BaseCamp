#!/usr/bin/env cwl-runner

baseCommand:
- ClusterMassTraces
class: CommandLineTool
cwlVersion: v1.0
id: clustermasstraces
inputs:
- doc: "*                        Mass traces (valid formats: 'consensusXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                       Output file (valid formats: 'mzML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Minimal pearson correlation score (default: '0.7')"
  id: min_pearson_correlation
  inputBinding:
    prefix: -min_pearson_correlation
  type: string
- doc: "Minimal peak nr to output pseudo spectra (default: '1')"
  id: min_peak_nr
  inputBinding:
    prefix: -min_peak_nr
  type: string
- doc: "Maximal lag (default: '1')"
  id: max_lag
  inputBinding:
    prefix: -max_lag
  type: string
- doc: "Maximal difference of the apex in retention time (default: '5')"
  id: max_rt_apex_difference
  inputBinding:
    prefix: -max_rt_apex_difference
  type: string
- doc: "Maximal intensity to be added to a spectrum (default: '0')"
  id: max_intensity_cut_off
  inputBinding:
    prefix: -max_intensity_cutoff
  type: string
- doc: "Add a precursor mass (default: '0')"
  id: add_precursor
  inputBinding:
    prefix: -add_precursor
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
