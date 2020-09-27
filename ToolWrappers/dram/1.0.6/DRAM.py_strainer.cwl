class: CommandLineTool
id: DRAM.py_strainer.cwl
inputs:
- id: in_input_annotations
  doc: 'annotations file to pull genes from (default: None)'
  type: File
  inputBinding:
    prefix: --input_annotations
- id: in_input_fast_a
  doc: 'fasta file to filter (default: None)'
  type: File
  inputBinding:
    prefix: --input_fasta
- id: in_output_fast_a
  doc: "location to write filtered fasta (default:\npull_genes.fasta)"
  type: string
  inputBinding:
    prefix: --output_fasta
- id: in_fast_as
  doc: "[FASTAS [FASTAS ...]]\nspace separated list of fastas to keep (default: None)"
  type: boolean
  inputBinding:
    prefix: --fastas
- id: in_scaffolds
  doc: "[SCAFFOLDS [SCAFFOLDS ...]]\nspace separated list of scaffolds to keep (default:\n\
    None)"
  type: boolean
  inputBinding:
    prefix: --scaffolds
- id: in_genes
  doc: "[GENES [GENES ...]]\nspace separated list of genes to keep (default: None)"
  type: boolean
  inputBinding:
    prefix: --genes
- id: in_identifiers
  doc: "[IDENTIFIERS [IDENTIFIERS ...]]\ndatabase identifiers to keep (default: None)"
  type: boolean
  inputBinding:
    prefix: --identifiers
- id: in_categories
  doc: "[CATEGORIES [CATEGORIES ...]]\ndistillate categories to keep genes from (default:\n\
    None)"
  type: boolean
  inputBinding:
    prefix: --categories
- id: in_taxonomy
  doc: "[TAXONOMY [TAXONOMY ...]]\nLevel of GTDBTk taxonomy to keep (e.g. c__Clostridia),\n\
    space separated list (default: None)"
  type: boolean
  inputBinding:
    prefix: --taxonomy
- id: in_completeness
  doc: "Minimum completeness of genome to keep genes (default:\nNone)"
  type: string
  inputBinding:
    prefix: --completeness
- id: in_contamination
  doc: "Maximum contamination of genome to keep genes\n(default: None)\n"
  type: string
  inputBinding:
    prefix: --contamination
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- DRAM.py
- strainer
