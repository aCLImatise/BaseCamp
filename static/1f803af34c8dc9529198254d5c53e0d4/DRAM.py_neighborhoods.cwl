class: CommandLineTool
id: DRAM.py_neighborhoods.cwl
inputs:
- id: in_input_file
  doc: 'Annotations path (default: None)'
  type: File?
  inputBinding:
    prefix: --input_file
- id: in_output_dir
  doc: 'Directory to write gene neighborhoods (default: None)'
  type: Directory?
  inputBinding:
    prefix: --output_dir
- id: in_genes
  doc: "[GENES [GENES ...]]\nGene names from DRAM to find neighborhoods around\n(default:\
    \ None)"
  type: boolean?
  inputBinding:
    prefix: --genes
- id: in_identifiers
  doc: "[IDENTIFIERS [IDENTIFIERS ...]]\nDatabase identifiers assigned by DRAM to\
    \ find\nneighborhoods around (default: None)"
  type: boolean?
  inputBinding:
    prefix: --identifiers
- id: in_categories
  doc: "Distillate categories to build gene neighborhoods\naround. (default: None)"
  type: string?
  inputBinding:
    prefix: --categories
- id: in_genes_loc
  doc: "Location of genes.fna/genes.faa file to filter to\nneighborhoods (default:\
    \ None)"
  type: File?
  inputBinding:
    prefix: --genes_loc
- id: in_scaffolds_loc
  doc: "Location of scaffolds.fna file to filter to\nneighborhoods (default: None)"
  type: File?
  inputBinding:
    prefix: --scaffolds_loc
- id: in_distance_genes
  doc: "Number of genes away from center to include in\nneighborhoods (default: None)"
  type: long?
  inputBinding:
    prefix: --distance_genes
- id: in_distance_bp
  doc: "Number of genes away from center to include in\nneighborhoods (default: None)\n"
  type: long?
  inputBinding:
    prefix: --distance_bp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dram:1.1.1--py_0
cwlVersion: v1.1
baseCommand:
- DRAM.py
- neighborhoods
