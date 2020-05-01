#!/usr/bin/env cwl-runner

baseCommand:
- makeMetaGeneProfile.pl
class: CommandLineTool
cwlVersion: v1.0
id: makemetageneprofile.pl
inputs:
- doc: '<#> (minimum size of genes/regions to use, default: 3000) (This prevents extremely
    small regions from being used)'
  id: min
  inputBinding:
    prefix: -min
  type: boolean
- doc: '<#> (max size of genes/regions to use, default: no max)'
  id: max
  inputBinding:
    prefix: -max
  type: boolean
- doc: '<#> (Number of bins in gene body, default: 50)'
  id: gb_in
  inputBinding:
    prefix: -gbin
  type: boolean
- doc: '<#> (Ratio of gene region to flanks, default: 2)'
  id: g_ratio
  inputBinding:
    prefix: -gRatio
  type: boolean
- doc: "<#> (Bin size for 5' and 3' flanks, default: 100)"
  id: bin
  inputBinding:
    prefix: -bin
  type: boolean
- doc: "<#> (Size of 5' and 3' flanks, default: 5000)"
  id: size
  inputBinding:
    prefix: -size
  type: boolean
