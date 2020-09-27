class: CommandLineTool
id: compare_taxa.py.cwl
inputs:
- id: in_unfiltered_tax_on_a
  doc: genome IDs for taxon A as deduced from phylogenetic tree of unfiltered concatemers
  type: File
  inputBinding:
    prefix: --unfiltered-taxon-a
- id: in_unfiltered_tax_on_b
  doc: genome IDs for taxon B as deduced from phylogenetic tree of unfiltered concatemers
  type: File
  inputBinding:
    prefix: --unfiltered-taxon-b
- id: in_filtered_tax_on_a
  doc: genome IDs for taxon A as deduced from phylogenetic tree of filtered concatemers
  type: File
  inputBinding:
    prefix: --filtered-taxon-a
- id: in_filtered_tax_on_b
  doc: genome IDs for taxon B as deduced from phylogenetic tree of filtered concatemers
  type: File
  inputBinding:
    prefix: --filtered-taxon-b
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- compare_taxa.py
