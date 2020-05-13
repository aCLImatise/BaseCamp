class: CommandLineTool
id: gimme_diff.cwl
inputs:
- id: fa_files
  doc: FASTA-formatted inputfiles OR a BED file with an identifier in the 4th column,
    for instance a cluster number.
  type: string
  inputBinding:
    position: 0
- id: bgf_a_file
  doc: FASTA-formatted background file
  type: string
  inputBinding:
    position: 1
- id: png_file
  doc: outputfile (image)
  type: string
  inputBinding:
    position: 2
- id: pfm_file
  doc: 'PFM file with motifs (default: gimme.vertebrate.v5.0.pfm)'
  type: string
  inputBinding:
    prefix: --pfmfile
- id: c
  doc: ', --cutoff         motif score cutoff or file with cutoffs (default 0.9)'
  type: boolean
  inputBinding:
    prefix: -c
- id: enrichment
  doc: minimum enrichment in at least one of the datasets compared to background
  type: long
  inputBinding:
    prefix: --enrichment
- id: frequency
  doc: minimum frequency in at least one of the datasets
  type: long
  inputBinding:
    prefix: --frequency
- id: genome
  doc: Genome; only necessary in combination with a BED file with clusters as inputfile.
  type: string
  inputBinding:
    prefix: --genome
outputs: []
cwlVersion: v1.1
baseCommand:
- gimme
- diff
