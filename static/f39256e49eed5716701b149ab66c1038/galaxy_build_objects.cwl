class: CommandLineTool
id: galaxy_build_objects.cwl
inputs:
- id: in_object_store_config
  doc: object store configuration file
  type: File?
  inputBinding:
    prefix: --object-store-config
- id: in_export
  doc: export path
  type: File?
  inputBinding:
    prefix: --export
- id: in_export_type
  doc: "export type (if needed)\n"
  type: string?
  inputBinding:
    prefix: --export-type
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/galaxy-data:20.9.1--py_2
cwlVersion: v1.1
baseCommand:
- galaxy-build-objects
