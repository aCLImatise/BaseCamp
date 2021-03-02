class: CommandLineTool
id: MapStatistics.cwl
inputs:
- id: in_in
  doc: "*        Input file (valid formats: 'featureXML', 'consensusXML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_in_type
  doc: "Input file type -- default: determined from file extension or content (valid:\
    \ 'featureXML', 'consensusXML')"
  type: File?
  inputBinding:
    prefix: -in_type
- id: in_out
  doc: "Optional output txt file. If empty, the output is written to the command line.\
    \ (valid formats: 'txt')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_report_separate_statistics
  doc: "Report separate statistics for each of n RT slices of the map. (default: '4'\
    \ min: '1' max: '100')"
  type: long?
  inputBinding:
    prefix: -n
- id: in_show_meta_information
  doc: Show meta information about the whole experiment
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_shows_processing_information
  doc: Shows data processing information
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_computes_summary_statistics
  doc: Computes a summary statistics of intensities, qualities, and widths
  type: boolean?
  inputBinding:
    prefix: -s
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
  doc: "Optional output txt file. If empty, the output is written to the command line.\
    \ (valid formats: 'txt')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openms:2.6.0--h4afb90d_0
cwlVersion: v1.1
baseCommand:
- MapStatistics
