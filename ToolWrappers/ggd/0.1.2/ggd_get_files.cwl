class: CommandLineTool
id: ggd_get_files.cwl
inputs:
- id: in_channel
  doc: "The ggd channel of the recipe to find. (Default =\ngenomics)"
  type: string?
  inputBinding:
    prefix: --channel
- id: in_species
  doc: "(Optional) species recipe is for. Use '*' for any\nspecies"
  type: string?
  inputBinding:
    prefix: --species
- id: in_genome_build
  doc: "(Optional) genome build the recipe is for. Use '*' for\nany genome build."
  type: string?
  inputBinding:
    prefix: --genome-build
- id: in_pattern
  doc: "(Optional) pattern to match the name of the file\ndesired. To list all files\
    \ for a ggd package, do not\nuse the -p option"
  type: File?
  inputBinding:
    prefix: --pattern
- id: in_prefix
  doc: "(Optional) The name or the full directory path to an\nconda environment where\
    \ a ggd recipe is stored. (Only\nneeded if not getting file paths for files in\
    \ the\ncurrent conda enviroment)\n"
  type: File?
  inputBinding:
    prefix: --prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ggd
- get-files
