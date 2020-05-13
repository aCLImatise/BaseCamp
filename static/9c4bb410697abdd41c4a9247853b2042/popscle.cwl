class: CommandLineTool
id: popscle.cwl
inputs:
- id: demux_let
  doc: ': Deconvolute sample identify of droplet-based sc-RNAseq'
  type: boolean
  inputBinding:
    prefix: '- demuxlet'
- id: free_mux_let_old
  doc: ': Genotype-free deconvolution of sc-RNAseq (deprecated)'
  type: boolean
  inputBinding:
    prefix: '- freemuxlet-old'
- id: free_mux_let
  doc: ': Genotype-free deconvolution of sc-RNAseq'
  type: boolean
  inputBinding:
    prefix: '- freemuxlet'
- id: dsc_pile_up
  doc: ': Produce pileup of dsc-RNAseq'
  type: boolean
  inputBinding:
    prefix: '- dsc-pileup'
- id: plp_make_dge_matrix
  doc: ': Make Digital Expression Matrix from Digital Pileups'
  type: boolean
  inputBinding:
    prefix: '- plp-make-dge-matrix'
outputs: []
cwlVersion: v1.1
baseCommand:
- popscle
