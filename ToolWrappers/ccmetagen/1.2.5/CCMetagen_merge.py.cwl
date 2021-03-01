class: CommandLineTool
id: CCMetagen_merge.py.cwl
inputs:
- id: in_input_fp
  doc: "Path to the folder containing CCMetagen text results.\nNote that files must\
    \ end with \".csv\" and the folder\nshould not contain other .csv files"
  type: File?
  inputBinding:
    prefix: --input_fp
- id: in_tax_level
  doc: "Taxonomic level to merge the results. Options:\nClosest_match (includes different\
    \ genes for the same\nspecies), Species (Default), Genus, Family, Order,\nClass,\
    \ Phylum, Kingdom and Superkingdom"
  type: string?
  inputBinding:
    prefix: --tax_level
- id: in_output_fp
  doc: Path to the output file. Default = merged_samples
  type: File?
  inputBinding:
    prefix: --output_fp
- id: in_keep_or_remove
  doc: "keep or remove taxa. Options = k (keep), r (remove)\nand n (none, default)"
  type: string?
  inputBinding:
    prefix: --keep_or_remove
- id: in_filtering_tax_level
  doc: level to perform taxonomic filtering, default = none
  type: string?
  inputBinding:
    prefix: --filtering_tax_level
- id: in_tax_a_list
  doc: "list taxon names (comma-separated) that you want to\nkeep or exclude\n"
  type: string?
  inputBinding:
    prefix: --taxa_list
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_fp
  doc: Path to the output file. Default = merged_samples
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fp)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ccmetagen:1.2.5--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- CCMetagen_merge.py
