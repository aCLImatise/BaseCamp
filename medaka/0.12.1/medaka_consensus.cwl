#!/usr/bin/env cwl-runner

baseCommand:
- medaka_consensus
class: CommandLineTool
cwlVersion: v1.0
id: medaka_consensus
inputs:
- doc: fastx input basecalls (required).
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: fasta input assembly (required).
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: 'output folder (default: medaka).'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: output vcf of changes, and bed file of polished regions. (note that this slows
    down consensus calculation).
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: "medaka model, (default: r941_min_high_g351). Available: r941_min_high_g330,\
    \ r941_min_high_g344, r941_min_high_g351, r941_prom_high_g330, r941_prom_high_g344,\
    \ r941_prom_high_g351, r941_min_high_g340_rle, r103_min_high_g345, r941_prom_snp_g322,\
    \ r941_prom_variant_g322, r103_prom_snp_g3210, r103_prom_variant_g3210. Alternatively\
    \ a .hdf file from 'medaka train'."
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: Force overwrite of outputs (default will reuse existing outputs).
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: 'number of threads with which to create features (default: 1).'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: 'batchsize, controls memory use (default: 100).'
  id: b
  inputBinding:
    prefix: -b
  type: boolean
