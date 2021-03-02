class: CommandLineTool
id: refgenie_tag.cwl
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
- id: in_tag
  doc: Tag to assign to an asset.
  type: string?
  inputBinding:
    prefix: --tag
- id: in_default
  doc: Set the selected asset tag as the default one.
  type: boolean?
  inputBinding:
    prefix: --default
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
- tag
