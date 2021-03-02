class: CommandLineTool
id: FeatureLinkerUnlabeled.cwl
inputs:
- id: in_in
  doc: "*        Input files separated by blanks (valid formats: 'featureXML', 'consensusXML')"
  type: string?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*        Output file (valid formats: 'consensusXML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_design
  doc: "Input file containing the experimental design (valid formats: 'tsv')"
  type: File?
  inputBinding:
    prefix: -design
- id: in_keep_subelements
  doc: 'For consensusXML input only: If set, the sub-features of the inputs are transferred
    to the output.'
  type: boolean?
  inputBinding:
    prefix: -keep_subelements
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
  doc: "*        Output file (valid formats: 'consensusXML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openms:2.6.0--h4afb90d_0
cwlVersion: v1.1
baseCommand:
- FeatureLinkerUnlabeled
