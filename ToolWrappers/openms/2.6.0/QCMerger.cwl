class: CommandLineTool
id: QCMerger.cwl
inputs:
- id: in_in
  doc: "*       List of qcml files to be merged. (valid formats: 'qcML')"
  type: string?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*       Output extended/reduced qcML file (valid formats: 'qcML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_setname
  doc: Use only when all given qcml files belong to one set, which will be held under
    the given name.
  type: string?
  inputBinding:
    prefix: -setname
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
  doc: "*       Output extended/reduced qcML file (valid formats: 'qcML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openms:2.6.0--h4afb90d_0
cwlVersion: v1.1
baseCommand:
- QCMerger
