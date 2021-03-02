class: CommandLineTool
id: NGSDAnnotateSV.cwl
inputs:
- id: in_in
  doc: BEDPE file containing structural variants.
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: Output BEDPE file containing annotated structural variants.
  type: File?
  inputBinding:
    prefix: -out
- id: in_ps
  doc: Processed sample name.
  type: string?
  inputBinding:
    prefix: -ps
- id: in_test
  doc: "Uses the test database instead of on the production database.\nDefault value:\
    \ 'false'"
  type: boolean?
  inputBinding:
    prefix: -test
- id: in_ignore_processing_system
  doc: "Use all SVs for annotation (otherwise only SVs from good samples of the same\
    \ processing system are used)\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -ignore_processing_system
- id: in_debug
  doc: "Provide additional information in STDOUT (e.g. query runtime)\nDefault value:\
    \ 'false'"
  type: boolean?
  inputBinding:
    prefix: -debug
- id: in_use_memory
  doc: "Creates the temporary tables in memory.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -use_memory
- id: in_changelog
  doc: Prints changeloge and exits.
  type: boolean?
  inputBinding:
    prefix: --changelog
- id: in_tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean?
  inputBinding:
    prefix: --tdx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output BEDPE file containing annotated structural variants.
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0
cwlVersion: v1.1
baseCommand:
- NGSDAnnotateSV
