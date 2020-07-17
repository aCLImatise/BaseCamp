class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ggd_get_files.cwl
inputs:
- id: channel
  doc: The ggd channel of the recipe to find. (Default = genomics)
  type: string
  inputBinding:
    prefix: --channel
- id: species
  doc: (Optional) species recipe is for. Use '*' for any species
  type: string
  inputBinding:
    prefix: --species
- id: genome_build
  doc: (Optional) genome build the recipe is for. Use '*' for any genome build.
  type: string
  inputBinding:
    prefix: --genome-build
- id: pattern
  doc: (Optional) pattern to match the name of the file desired. To list all files
    for a ggd package, do not use the -p option
  type: string
  inputBinding:
    prefix: --pattern
- id: prefix
  doc: (Optional) The name or the full directory path to an conda environment where
    a ggd recipe is stored. (Only needed if not getting file paths for files in the
    current conda enviroment)
  type: string
  inputBinding:
    prefix: --prefix
- id: name
  doc: pattern to match recipe name(s).
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ggd
- get-files
