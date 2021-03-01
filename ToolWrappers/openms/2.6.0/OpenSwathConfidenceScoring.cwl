class: CommandLineTool
id: OpenSwathConfidenceScoring.cwl
inputs:
- id: in_in
  doc: "*            Input file (OpenSwath results) (valid formats: 'featureXML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_lib
  doc: "*           Assay library (valid formats: 'traML')"
  type: File?
  inputBinding:
    prefix: -lib
- id: in_out
  doc: "*           Output file (results with confidence scores) (valid formats: 'featureXML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_traf_o
  doc: "Retention time transformation (valid formats: 'trafoXML')"
  type: File?
  inputBinding:
    prefix: -trafo
- id: in_decoys
  doc: "Number of decoy assays to select from the library for every true assay (0\
    \ for \"all\") (default: '1000' min: '0')"
  type: long?
  inputBinding:
    prefix: -decoys
- id: in_transitions
  doc: "Number of transitions per feature to consider (highest intensities first;\
    \ 0 for \"all\") (default: '6' min: '0')"
  type: long?
  inputBinding:
    prefix: -transitions
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
  doc: "*           Output file (results with confidence scores) (valid formats: 'featureXML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openms:2.6.0--h4afb90d_0
cwlVersion: v1.1
baseCommand:
- OpenSwathConfidenceScoring
