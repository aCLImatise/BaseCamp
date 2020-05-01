#!/usr/bin/env cwl-runner

baseCommand:
- popscle
class: CommandLineTool
cwlVersion: v1.0
id: popscle
inputs:
- doc: ': Deconvolute sample identify of droplet-based sc-RNAseq'
  id: demux_let
  inputBinding:
    prefix: '- demuxlet'
  type: boolean
- doc: ': Genotype-free deconvolution of sc-RNAseq (deprecated)'
  id: free_mux_let_old
  inputBinding:
    prefix: '- freemuxlet-old'
  type: boolean
- doc: ': Genotype-free deconvolution of sc-RNAseq'
  id: free_mux_let
  inputBinding:
    prefix: '- freemuxlet'
  type: boolean
- doc: ': Produce pileup of dsc-RNAseq'
  id: dsc_pile_up
  inputBinding:
    prefix: '- dsc-pileup'
  type: boolean
- doc: ': Make Digital Expression Matrix from Digital Pileups'
  id: plp_make_dge_matrix
  inputBinding:
    prefix: '- plp-make-dge-matrix'
  type: boolean
