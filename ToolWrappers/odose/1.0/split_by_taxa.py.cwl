class: CommandLineTool
id: split_by_taxa.py.cwl
inputs:
- id: in_genomes_a
  doc: file with genome GenBank Project ID and Organism name on each line for taxon
    A
  type: File?
  inputBinding:
    prefix: --genomes-a
- id: in_genomes_b
  doc: file with genome GenBank Project ID and Organism name on each line for taxon
    B
  type: File?
  inputBinding:
    prefix: --genomes-b
- id: in_orthologs_zip
  doc: archive of aligned & trimmed single copy orthologous (SICO) genes
  type: File?
  inputBinding:
    prefix: --orthologs-zip
- id: in_tax_on_a_zip
  doc: destination file path for archive of SICO genes belonging to taxon A
  type: File?
  inputBinding:
    prefix: --taxon-a-zip
- id: in_tax_on_b_zip
  doc: destination file path for archive of SICO genes belonging to taxon B
  type: File?
  inputBinding:
    prefix: --taxon-b-zip
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- split_by_taxa.py
