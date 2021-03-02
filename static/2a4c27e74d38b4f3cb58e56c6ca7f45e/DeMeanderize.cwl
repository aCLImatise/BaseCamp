class: CommandLineTool
id: DeMeanderize.cwl
inputs:
- id: in_in
  doc: "*              Input experiment file, containing the wrongly sorted spectra.\
    \ (valid formats: 'mzML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*             Output experiment file with correctly sorted spectra. (valid\
    \ formats: 'mzML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_num_spots_per_row
  doc: "Number of spots in one column, until next row is spotted. (default: '48' min:\
    \ '1')"
  type: long?
  inputBinding:
    prefix: -num_spots_per_row
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
  doc: "*             Output experiment file with correctly sorted spectra. (valid\
    \ formats: 'mzML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openms:2.6.0--h4afb90d_0
cwlVersion: v1.1
baseCommand:
- DeMeanderize
