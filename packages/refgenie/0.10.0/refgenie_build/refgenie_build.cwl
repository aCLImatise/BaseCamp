class: CommandLineTool
id: refgenie_build.cwl
inputs:
- id: in_genome_config
  doc: "Path to local genome configuration file. Optional\nif REFGENIE environment\
    \ variable is set."
  type: File?
  inputBinding:
    prefix: --genome-config
- id: in_skip_read_lock
  doc: Whether the config file should not be locked for
  type: boolean?
  inputBinding:
    prefix: --skip-read-lock
- id: in_new_start
  doc: Overwrite all results to start a fresh run
  type: boolean?
  inputBinding:
    prefix: --new-start
- id: in_tag_description
  doc: "Add tag level description (e.g. built with version\n0.3.2)."
  type: double?
  inputBinding:
    prefix: --tag-description
- id: in_genome_description
  doc: "Add genome level description (e.g. The mouse\nmitochondrial genome, released\
    \ in Dec 2013)."
  type: long?
  inputBinding:
    prefix: --genome-description
- id: in_docker
  doc: Run all commands in the refgenie docker container.
  type: boolean?
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
  doc: "If using docker, also mount these folders as\nvolumes."
  type: string[]
  inputBinding:
    prefix: --volumes
- id: in_out_folder
  doc: "Override the default path to genomes folder, which\nis the genome_folder attribute\
    \ in the genome\nconfiguration file."
  type: Directory?
  inputBinding:
    prefix: --outfolder
- id: in_requirements
  doc: "Show the build requirements for the specified\nasset and exit."
  type: boolean?
  inputBinding:
    prefix: --requirements
- id: in_recipe
  doc: Provide a recipe to use.
  type: string?
  inputBinding:
    prefix: --recipe
- id: in_genome
  doc: Reference assembly ID, e.g. mm10.
  type: long?
  inputBinding:
    prefix: --genome
- id: in_c
  doc: ''
  type: File?
  inputBinding:
    prefix: -C
- id: in_r
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_asset_registry_paths
  doc: "One or more registry path strings that identify\nassets (e.g. hg38/fasta or\
    \ hg38/fasta:tag)."
  type: string
  inputBinding:
    position: 0
- id: in_reading
  doc: -R, --recover                         Overwrite locks to recover from previous
    failed
  type: string
  inputBinding:
    position: 0
- id: in_run
  doc: -C CONFIG_FILE, --config CONFIG_FILE  Pipeline configuration file (YAML). Relative
    paths
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_folder
  doc: "Override the default path to genomes folder, which\nis the genome_folder attribute\
    \ in the genome\nconfiguration file."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_folder)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/refgenie:0.10.0--py_0
cwlVersion: v1.1
baseCommand:
- refgenie
- build
