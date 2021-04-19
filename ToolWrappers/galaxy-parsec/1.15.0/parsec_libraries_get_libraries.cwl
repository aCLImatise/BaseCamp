class: CommandLineTool
id: parsec_libraries_get_libraries.cwl
inputs:
- id: in_library_id
  doc: filter for library by library id
  type: string?
  inputBinding:
    prefix: --library_id
- id: in_name
  doc: "If ``name`` is set and multiple names match the given\nname, all the libraries\
    \ matching the argument will be\nreturned"
  type: string?
  inputBinding:
    prefix: --name
- id: in_deleted
  doc: "If ``False`` (the default), return only non-deleted\nlibraries. If ``True``,\
    \ return only deleted libraries. If\n``None``, return both deleted and non-deleted\
    \ libraries."
  type: boolean?
  inputBinding:
    prefix: --deleted
- id: in_both_dot
  doc: "Output:\nlist of dicts each containing basic information about a library"
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
- get_libraries
