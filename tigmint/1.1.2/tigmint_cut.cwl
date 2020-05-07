class: CommandLineTool
id: tigmint_cut.cwl
inputs:
- id: fast_a
  doc: Reference genome fasta file (must have FAI index generated)
  type: string
  inputBinding:
    position: 0
- id: bed
  doc: Sorted bed file of molecule extents
  type: string
  inputBinding:
    position: 1
- id: fast_a_out
  doc: The output FASTA file.
  type: string
  inputBinding:
    prefix: --fastaout
- id: bed_out
  doc: The output BED file. Default is the output FASTA filename plus .bed
  type: string
  inputBinding:
    prefix: --bedout
- id: processes
  doc: Number of parallel processes to launch [8]
  type: string
  inputBinding:
    prefix: --processes
- id: window
  doc: Window size used to check for spanning molecules (bp) [1000]
  type: string
  inputBinding:
    prefix: --window
- id: spanning
  doc: Spanning molecules threshold (no misassembly in window if num. spanning molecules
    >= n [2])
  type: string
  inputBinding:
    prefix: --spanning
- id: trim
  doc: Number of base pairs to trim at contig cuts (bp) [0]
  type: string
  inputBinding:
    prefix: --trim
outputs: []
cwlVersion: v1.1
baseCommand:
- tigmint-cut
