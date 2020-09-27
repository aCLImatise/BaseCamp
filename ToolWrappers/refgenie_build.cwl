class: CommandLineTool
id: refgenie_build.cwl
inputs:
- id: in_genome_config
  doc: "Path to local genome configuration file. Optional if\nREFGENIE environment\
    \ variable is set."
  type: File
  inputBinding:
    prefix: --genome-config
- id: in_recover
  doc: Overwrite locks to recover from previous failed run
  type: boolean
  inputBinding:
    prefix: --recover
- id: in_config
  doc: "Pipeline configuration file (YAML). Relative paths are\nwith respect to the\
    \ pipeline script."
  type: File
  inputBinding:
    prefix: --config
- id: in_new_start
  doc: Overwrite all results to start a fresh run
  type: boolean
  inputBinding:
    prefix: --new-start
- id: in_tag_description
  doc: "Add tag level description (e.g. built with version\n0.3.2)."
  type: double
  inputBinding:
    prefix: --tag-description
- id: in_genome_description
  doc: "Add genome level description (e.g. The mouse\nmitochondrial genome, released\
    \ in Dec 2013)."
  type: long
  inputBinding:
    prefix: --genome-description
- id: in_docker
  doc: Run all commands in the refgenie docker container.
  type: boolean
  inputBinding:
    prefix: --docker
- id: in_assets
  doc: "Override the default genome, asset and tag of the\nparents (e.g. fasta=hg38/fasta:default\n\
    gtf=mm10/gencode_gtf:default)."
  type: string[]
  inputBinding:
    prefix: --assets
- id: in_files
  doc: "Provide paths to the required files (e.g.\nfasta=/path/to/file.fa.gz)."
  type: string[]
  inputBinding:
    prefix: --files
- id: in_params
  doc: "Provide required parameter values (e.g.\nparam1=value1)."
  type: string[]
  inputBinding:
    prefix: --params
- id: in_volumes
  doc: If using docker, also mount these folders as volumes.
  type: string[]
  inputBinding:
    prefix: --volumes
- id: in_out_folder
  doc: "Override the default path to genomes folder, which is\nthe genome_folder attribute\
    \ in the genome\nconfiguration file."
  type: Directory
  inputBinding:
    prefix: --outfolder
- id: in_requirements
  doc: "Show the build requirements for the specified asset\nand exit."
  type: boolean
  inputBinding:
    prefix: --requirements
- id: in_recipe
  doc: Provide a recipe to use.
  type: string
  inputBinding:
    prefix: --recipe
- id: in_genome
  doc: "Reference assembly ID, e.g. mm10.\n"
  type: long
  inputBinding:
    prefix: --genome
- id: in_asset_registry_paths
  doc: "One or more registry path strings that identify assets\n(e.g. hg38/fasta or\
    \ hg38/fasta:tag)."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_folder
  doc: "Override the default path to genomes folder, which is\nthe genome_folder attribute\
    \ in the genome\nconfiguration file."
  type: Directory
  outputBinding:
    glob: $(inputs.in_out_folder)
cwlVersion: v1.1
baseCommand:
- refgenie
- build
