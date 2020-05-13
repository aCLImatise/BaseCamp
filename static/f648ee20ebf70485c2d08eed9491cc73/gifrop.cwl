class: CommandLineTool
id: gifrop.cwl
inputs:
- id: threads
  doc: Number of threads to use for parallel abricate commands
  type: boolean
  inputBinding:
    prefix: --threads
- id: no_plots
  doc: Don't generate plots
  type: boolean
  inputBinding:
    prefix: --no_plots
- id: min_genes
  doc: Only return islands with greater than this many genes (4)
  type: boolean
  inputBinding:
    prefix: --min_genes
- id: flank_dna
  doc: output this many bases of DNA on either side of each island (0)
  type: boolean
  inputBinding:
    prefix: --flank_dna
- id: get_islands
  doc: Run the main program to extract genomic islands
  type: boolean
  inputBinding:
    prefix: --get_islands
outputs: []
cwlVersion: v1.1
baseCommand:
- gifrop
