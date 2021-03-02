class: CommandLineTool
id: gifrop.cwl
inputs:
- id: in_threads
  doc: Number of threads to use for parallel abricate commands
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_no_plots
  doc: Don't generate plots
  type: boolean?
  inputBinding:
    prefix: --no_plots
- id: in_min_genes
  doc: Only return islands with greater than this many genes (4)
  type: boolean?
  inputBinding:
    prefix: --min_genes
- id: in_flank_dna
  doc: output this many bases of DNA on either side of each island (0)
  type: boolean?
  inputBinding:
    prefix: --flank_dna
- id: in_get_islands
  doc: Run the main program to extract genomic islands
  type: boolean?
  inputBinding:
    prefix: --get_islands
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gifrop
