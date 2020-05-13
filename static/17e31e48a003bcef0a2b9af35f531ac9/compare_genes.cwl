class: CommandLineTool
id: compare_genes.py.cwl
inputs:
- id: path
  doc: Path to output from `merge_midas.py genes` for one species directory should
    be named according to a species_id and contains files 'genes_*.txt')
  type: File
  inputBinding:
    position: 0
- id: out
  doc: Path to output file
  type: File
  inputBinding:
    prefix: --out
- id: max_genes
  doc: Maximum number of genes to use. Useful for quick tests (use all)
  type: long
  inputBinding:
    prefix: --max_genes
- id: max_samples
  doc: Maximum number of samples to use. Useful for quick tests (use all)
  type: long
  inputBinding:
    prefix: --max_samples
- id: distance
  doc: Metric to use for computing distances (jaccard)
  type: string
  inputBinding:
    prefix: --distance
- id: d_type
  doc: Data type to use for comparing genes (presabs)
  type: string
  inputBinding:
    prefix: --dtype
- id: cut_off
  doc: Cutoff to use for determining presence absence (0.35)
  type: double
  inputBinding:
    prefix: --cutoff
outputs: []
cwlVersion: v1.1
baseCommand:
- compare_genes.py
