class: CommandLineTool
id: SpectraMerger.cwl
inputs:
- id: in_in
  doc: "*               Input mzML file. (valid formats: 'mzML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*              Output mzML file with merged spectra. (valid formats: 'mzML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_merging_method
  doc: "Method of merging which should be used. (default: 'average_gaussian' valid:\
    \ 'average_gaussian', 'average_tophat', 'precursor_method', 'block_method')"
  type: string?
  inputBinding:
    prefix: -merging_method
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
  doc: "*              Output mzML file with merged spectra. (valid formats: 'mzML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openms:2.6.0--h4afb90d_0
cwlVersion: v1.1
baseCommand:
- SpectraMerger
