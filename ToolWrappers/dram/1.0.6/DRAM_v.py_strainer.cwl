class: CommandLineTool
id: DRAM_v.py_strainer.cwl
inputs:
- id: in_input_annotations
  doc: 'annotations file to pull genes from (default: None)'
  type: File?
  inputBinding:
    prefix: --input_annotations
- id: in_input_fast_a
  doc: 'fasta file to filter (default: None)'
  type: File?
  inputBinding:
    prefix: --input_fasta
- id: in_output_fast_a
  doc: "location to write filtered fasta (default:\npull_genes.fasta)"
  type: string?
  inputBinding:
    prefix: --output_fasta
- id: in_fast_as
  doc: "[FASTAS [FASTAS ...]]\nspace separated list of fastas to keep (default: None)"
  type: boolean?
  inputBinding:
    prefix: --fastas
- id: in_scaffolds
  doc: "[SCAFFOLDS [SCAFFOLDS ...]]\nspace separated list of scaffolds to keep (default:\n\
    None)"
  type: boolean?
  inputBinding:
    prefix: --scaffolds
- id: in_genes
  doc: "[GENES [GENES ...]]\nspace separated list of genes to keep (default: None)"
  type: boolean?
  inputBinding:
    prefix: --genes
- id: in_identifiers
  doc: "[IDENTIFIERS [IDENTIFIERS ...]]\ndatabase identifiers to keep (default: None)"
  type: boolean?
  inputBinding:
    prefix: --identifiers
- id: in_categories
  doc: "[CATEGORIES [CATEGORIES ...]]\ndistillate categories to keep genes from (default:\n\
    None)"
  type: boolean?
  inputBinding:
    prefix: --categories
- id: in_amg_flags
  doc: "AMG flags to keep, if any one is present then it will\nbe kept (default: None)"
  type: string?
  inputBinding:
    prefix: --amg_flags
- id: in_aux_scores
  doc: "[AUX_SCORES [AUX_SCORES ...]]\nspace separate list of auxiliary scores to\
    \ keep\n(default: None)"
  type: boolean?
  inputBinding:
    prefix: --aux_scores
- id: in_vir_sorter_category
  doc: "[VIRSORTER_CATEGORY [VIRSORTER_CATEGORY ...]]\nspace separate list of virsorter\
    \ categories to keep\n(default: None)"
  type: boolean?
  inputBinding:
    prefix: --virsorter_category
- id: in_putative_a_mgs
  doc: "Only keep genes considered putative AMGs (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --putative_amgs
- id: in_max_auxiliary_score
  doc: "Maximum auxiliary score to consider gene as potential\nAMG (default: 3)"
  type: long?
  inputBinding:
    prefix: --max_auxiliary_score
- id: in_remove_transposons
  doc: "Do not consider genes on scaffolds with transposons as\npotential AMGs (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --remove_transposons
- id: in_remove_fs
  doc: "Do not consider genes near ends of scaffolds as\npotential AMGs (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --remove_fs
- id: in_remove_js
  doc: "Do not consider genes on possible non-viral contigs as\npotential AMGs (default:\
    \ False)\n"
  type: boolean?
  inputBinding:
    prefix: --remove_js
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- DRAM-v.py
- strainer
