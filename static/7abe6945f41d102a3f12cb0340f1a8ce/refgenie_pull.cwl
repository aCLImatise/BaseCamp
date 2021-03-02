class: CommandLineTool
id: refgenie_pull.cwl
inputs:
- id: in_genome_config
  doc: "Path to local genome configuration file. Optional if\nREFGENIE environment\
    \ variable is set."
  type: File?
  inputBinding:
    prefix: --genome-config
- id: in_genome
  doc: Reference assembly ID, e.g. mm10.
  type: long?
  inputBinding:
    prefix: --genome
- id: in_no_overwrite
  doc: Do not overwrite if asset exists.
  type: boolean?
  inputBinding:
    prefix: --no-overwrite
- id: in_force_overwrite
  doc: Overwrite if asset exists.
  type: boolean?
  inputBinding:
    prefix: --force-overwrite
- id: in_no_large
  doc: Do not pull archives over 5GB.
  type: boolean?
  inputBinding:
    prefix: --no-large
- id: in_pull_large
  doc: Pull any archive, regardless of its size.
  type: boolean?
  inputBinding:
    prefix: --pull-large
- id: in_size_cut_off
  doc: "Maximum archive file size to download with no\nconfirmation required (in GB,\
    \ default: 10)"
  type: long?
  inputBinding:
    prefix: --size-cutoff
- id: in_batch
  doc: 'Use batch mode: pull large archives, do no overwrite'
  type: boolean?
  inputBinding:
    prefix: --batch
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/refgenie:0.9.3--py_0
cwlVersion: v1.1
baseCommand:
- refgenie
- pull
