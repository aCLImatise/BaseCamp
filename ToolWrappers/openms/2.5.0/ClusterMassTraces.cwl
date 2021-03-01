class: CommandLineTool
id: ClusterMassTraces.cwl
inputs:
- id: in_in
  doc: "*                        Mass traces (valid formats: 'consensusXML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*                       Output file (valid formats: 'mzML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_min_pearson_correlation
  doc: "Minimal pearson correlation score (default: '0.7')"
  type: double?
  inputBinding:
    prefix: -min_pearson_correlation
- id: in_min_peak_nr
  doc: "Minimal peak nr to output pseudo spectra (default: '1')"
  type: long?
  inputBinding:
    prefix: -min_peak_nr
- id: in_max_lag
  doc: "Maximal lag (default: '1')"
  type: long?
  inputBinding:
    prefix: -max_lag
- id: in_max_rt_apex_difference
  doc: "Maximal difference of the apex in retention time (default: '5.0')"
  type: double?
  inputBinding:
    prefix: -max_rt_apex_difference
- id: in_max_intensity_cut_off
  doc: "Maximal intensity to be added to a spectrum (default: '0.0')"
  type: double?
  inputBinding:
    prefix: -max_intensity_cutoff
- id: in_add_precursor
  doc: "Add a precursor mass (default: '0.0')"
  type: double?
  inputBinding:
    prefix: -add_precursor
- id: in_ini
  doc: Use the given TOPP INI file
  type: File?
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long?
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File?
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean?
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "*                       Output file (valid formats: 'mzML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- ClusterMassTraces
