class: CommandLineTool
id: ggd_check_recipe_recipe_path.cwl
inputs:
- id: in_debug
  doc: (Optional) Set the stdout log level to debug
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_dont_uninstall
  doc: "(Optional) By default the newly installed local ggd\ndata package is uninstalled\
    \ after the check has\nfinished. To bypass this uninstall step (to keep the\n\
    local package installed) set this flag \"--\ndont_uninstall\""
  type: boolean?
  inputBinding:
    prefix: --dont_uninstall
- id: in_id
  doc: "ID   If checking a meta-recipe the associated meta-recipe\nid needs to be\
    \ supplied. (Example: for a geo meta-\nrecipe use something like --id GSE123)\
    \ NOTE: GGD does\nnot try to correct the ID. Please provide the correct\ncase\
    \ sensitive ID.\n"
  type: long?
  inputBinding:
    prefix: --id
- id: in_recipe_path
  doc: "path to recipe directory (can also be path to the\n.bz2)"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ggd:1.1.2--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- ggd
- check-recipe
- recipe_path
