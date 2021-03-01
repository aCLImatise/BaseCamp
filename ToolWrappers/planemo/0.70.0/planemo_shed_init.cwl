class: CommandLineTool
id: planemo_shed_init.cwl
inputs:
- id: in_from_workflow
  doc: "Attempt to generate repository dependencies\nfrom specified workflow."
  type: File?
  inputBinding:
    prefix: --from_workflow
- id: in_description
  doc: "Specify repository description for\n.shed.yml."
  type: string?
  inputBinding:
    prefix: --description
- id: in_long_description
  doc: "Specify repository long_description for\n.shed.yml."
  type: string?
  inputBinding:
    prefix: --long_description
- id: in_remote_repository_url
  doc: "Specify repository remote_repository_url for\n.shed.yml."
  type: string?
  inputBinding:
    prefix: --remote_repository_url
- id: in_homepage_url
  doc: "Specify repository homepage_url for\n.shed.yml."
  type: string?
  inputBinding:
    prefix: --homepage_url
- id: in_category
  doc: "[Assembly|ChIP-seq|Combinatorial Selections|Computational chemistry|Constructive\
    \ Solid Geometry|Convert Formats|Data Export|Data Managers|Data Source|Entomology|Epigenetics|Fasta\
    \ Manipulation|Fastq Manipulation|Flow Cytometry Analysis|Genome annotation|Genome\
    \ editing|Genome-Wide Association Study|Genomic Interval Operations|Graphics|Imaging|Machine\
    \ Learning|Metabolomics|Metagenomics|Micro-array Analysis|Molecular Dynamics|Next\
    \ Gen Mappers|NLP|Ontology Manipulation|Phylogenetics|Proteomics|RNA|SAM|Sequence\
    \ Analysis|Statistics|Systems Biology|Text Manipulation|Tool Dependency Packages|Tool\
    \ Generators|Transcriptomics|Variant Analysis|Visualization|Web Services]\nSpecify\
    \ repository category for .shed.yml\n(may specify multiple)."
  type: boolean?
  inputBinding:
    prefix: --category
- id: in_owner
  doc: Tool Shed repository owner (username).
  type: string?
  inputBinding:
    prefix: --owner
- id: in_name
  doc: "Tool Shed repository name (defaults to the\ninferred tool directory name)."
  type: Directory?
  inputBinding:
    prefix: --name
- id: in_force
  doc: Overwrite existing files if present.
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_project
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- planemo
- shed_init
