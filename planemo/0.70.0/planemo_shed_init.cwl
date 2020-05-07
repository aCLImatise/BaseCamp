class: CommandLineTool
id: planemo_shed_init.cwl
inputs:
- id: from_workflow
  doc: Attempt to generate repository dependencies from specified workflow.
  type: File
  inputBinding:
    prefix: --from_workflow
- id: description
  doc: Specify repository description for .shed.yml.
  type: string
  inputBinding:
    prefix: --description
- id: long_description
  doc: Specify repository long_description for .shed.yml.
  type: string
  inputBinding:
    prefix: --long_description
- id: remote_repository_url
  doc: Specify repository remote_repository_url for .shed.yml.
  type: string
  inputBinding:
    prefix: --remote_repository_url
- id: homepage_url
  doc: Specify repository homepage_url for .shed.yml.
  type: string
  inputBinding:
    prefix: --homepage_url
- id: category
  doc: '[Assembly|ChIP-seq|Combinatorial Selections|Computational chemistry|Constructive
    Solid Geometry|Convert Formats|Data Export|Data Managers|Data Source|Entomology|Epigenetics|Fasta
    Manipulation|Fastq Manipulation|Flow Cytometry Analysis|Genome annotation|Genome
    editing|Genome-Wide Association Study|Genomic Interval Operations|Graphics|Imaging|Machine
    Learning|Metabolomics|Metagenomics|Micro-array Analysis|Molecular Dynamics|Next
    Gen Mappers|NLP|Ontology Manipulation|Phylogenetics|Proteomics|RNA|SAM|Sequence
    Analysis|Statistics|Systems Biology|Text Manipulation|Tool Dependency Packages|Tool
    Generators|Transcriptomics|Variant Analysis|Visualization|Web Services] Specify
    repository category for .shed.yml (may specify multiple).'
  type: boolean
  inputBinding:
    prefix: --category
- id: owner
  doc: Tool Shed repository owner (username).
  type: string
  inputBinding:
    prefix: --owner
- id: name
  doc: Tool Shed repository name (defaults to the inferred tool directory name).
  type: string
  inputBinding:
    prefix: --name
- id: force
  doc: Overwrite existing files if present.
  type: boolean
  inputBinding:
    prefix: --force
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- shed_init
