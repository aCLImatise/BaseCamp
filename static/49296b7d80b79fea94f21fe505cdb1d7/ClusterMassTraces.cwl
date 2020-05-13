class: CommandLineTool
id: ClusterMassTraces.cwl
inputs:
- id: in
  doc: "*                        Mass traces (valid formats: 'consensusXML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*                       Output file (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -out
- id: min_pearson_correlation
  doc: "Minimal pearson correlation score (default: '0.7')"
  type: string
  inputBinding:
    prefix: -min_pearson_correlation
- id: min_peak_nr
  doc: "Minimal peak nr to output pseudo spectra (default: '1')"
  type: string
  inputBinding:
    prefix: -min_peak_nr
- id: max_lag
  doc: "Maximal lag (default: '1')"
  type: string
  inputBinding:
    prefix: -max_lag
- id: max_rt_apex_difference
  doc: "Maximal difference of the apex in retention time (default: '5.0')"
  type: string
  inputBinding:
    prefix: -max_rt_apex_difference
- id: max_intensity_cut_off
  doc: "Maximal intensity to be added to a spectrum (default: '0.0')"
  type: string
  inputBinding:
    prefix: -max_intensity_cutoff
- id: add_precursor
  doc: "Add a precursor mass (default: '0.0')"
  type: string
  inputBinding:
    prefix: -add_precursor
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
- ClusterMassTraces
