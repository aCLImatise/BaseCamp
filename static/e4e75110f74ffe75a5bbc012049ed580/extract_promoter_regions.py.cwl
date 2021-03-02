class: CommandLineTool
id: extract_promoter_regions.py.cwl
inputs:
- id: in_no_neighbours
  doc: Ignore the presence of neighbours when extracting
  type: string?
  inputBinding:
    prefix: --no-neighbours
- id: in_gzip
  doc: Output will be compressed in GZip format.
  type: boolean?
  inputBinding:
    prefix: --gzip
- id: in_genome
  doc: gff3
  type: string
  inputBinding:
    position: 0
- id: in_gene_list
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 1
- id: in_genes_dot
  doc: -eu, --exclude-utr
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- extract_promoter_regions.py
