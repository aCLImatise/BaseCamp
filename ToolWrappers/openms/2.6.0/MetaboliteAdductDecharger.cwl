class: CommandLineTool
id: MetaboliteAdductDecharger.cwl
inputs:
- id: in_in
  doc: "*        Input file  (valid formats: 'featureXML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out_cm
  doc: "Output consensus map (valid formats: 'consensusXML')"
  type: File?
  inputBinding:
    prefix: -out_cm
- id: in_out_fm
  doc: "Output feature map (valid formats: 'featureXML')"
  type: File?
  inputBinding:
    prefix: -out_fm
- id: in_out_pairs
  doc: "Output file (valid formats: 'consensusXML')"
  type: File?
  inputBinding:
    prefix: -outpairs
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
- id: out_out_pairs
  doc: "Output file (valid formats: 'consensusXML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_pairs)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openms:2.6.0--h4afb90d_0
cwlVersion: v1.1
baseCommand:
- MetaboliteAdductDecharger
