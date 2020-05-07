class: CommandLineTool
id: refgenie_build.cwl
inputs:
- id: asset_registry_paths
  doc: One or more registry path strings that identify assets (e.g. hg38/fasta or
    hg38/fasta:tag).
  type: string
  inputBinding:
    position: 0
- id: genome_config
  doc: Path to local genome configuration file. Optional if REFGENIE environment variable
    is set.
  type: string
  inputBinding:
    prefix: --genome-config
- id: recover
  doc: Overwrite locks to recover from previous failed run
  type: boolean
  inputBinding:
    prefix: --recover
- id: config
  doc: Pipeline configuration file (YAML). Relative paths are with respect to the
    pipeline script.
  type: string
  inputBinding:
    prefix: --config
- id: new_start
  doc: Overwrite all results to start a fresh run
  type: boolean
  inputBinding:
    prefix: --new-start
- id: tag_description
  doc: Add tag level description (e.g. built with version 0.3.2).
  type: string
  inputBinding:
    prefix: --tag-description
- id: genome_description
  doc: Add genome level description (e.g. The mouse mitochondrial genome, released
    in Dec 2013).
  type: string
  inputBinding:
    prefix: --genome-description
- id: docker
  doc: Run all commands in the refgenie docker container.
  type: boolean
  inputBinding:
    prefix: --docker
- id: assets
  doc: Override the default genome, asset and tag of the parents (e.g. fasta=hg38/fasta:default
    gtf=mm10/gencode_gtf:default).
  type: string[]
  inputBinding:
    prefix: --assets
- id: files
  doc: Provide paths to the required files (e.g. fasta=/path/to/file.fa.gz).
  type: File[]
  inputBinding:
    prefix: --files
- id: params
  doc: Provide required parameter values (e.g. param1=value1).
  type: string[]
  inputBinding:
    prefix: --params
- id: volumes
  doc: If using docker, also mount these folders as volumes.
  type: string[]
  inputBinding:
    prefix: --volumes
- id: out_folder
  doc: Override the default path to genomes folder, which is the genome_folder attribute
    in the genome configuration file.
  type: string
  inputBinding:
    prefix: --outfolder
- id: requirements
  doc: Show the build requirements for the specified asset and exit.
  type: boolean
  inputBinding:
    prefix: --requirements
- id: recipe
  doc: Provide a recipe to use.
  type: string
  inputBinding:
    prefix: --recipe
- id: genome
  doc: Reference assembly ID, e.g. mm10.
  type: string
  inputBinding:
    prefix: --genome
outputs: []
cwlVersion: v1.1
baseCommand:
- refgenie
- build
