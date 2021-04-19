class: CommandLineTool
id: parsec_libraries_update_library_dataset.cwl
inputs:
- id: in_file_ext
  doc: "Replace library dataset extension (must exist in the\nGalaxy registry)"
  type: string?
  inputBinding:
    prefix: --file_ext
- id: in_genome_build
  doc: Replace library dataset genome build (dbkey)
  type: string?
  inputBinding:
    prefix: --genome_build
- id: in_misc_info
  doc: Replace library dataset misc_info with given string
  type: string?
  inputBinding:
    prefix: --misc_info
- id: in_name
  doc: Replace library dataset name with the given string
  type: string?
  inputBinding:
    prefix: --name
- id: in_tags
  doc: Replace library dataset tags with the given list
  type: string?
  inputBinding:
    prefix: --tags
- id: in_dataset_id
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- parsec
- libraries
- update_library_dataset
