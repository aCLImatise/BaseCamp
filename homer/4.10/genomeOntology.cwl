#!/usr/bin/env cwl-runner

baseCommand:
- genomeOntology
class: CommandLineTool
cwlVersion: v1.0
id: genomeontology
inputs:
- doc: '<#|given> (Maximum distance between peak centers to consider, default: 100)
    Using "-d given" looks for literal overlaps in peak regions, and calculates significance
    based on the total overlap in bp between peaks/annotations Use "-d given" when
    features have vastly different sizes (i.e. introns vs. peaks)'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: (file listing peak files to compare - for lots of peak files)
  id: file
  inputBinding:
    prefix: -file
  type: File
- doc: '<#> (Genome size for significance calculations, default: 2e9)'
  id: g_size
  inputBinding:
    prefix: -gsize
  type: boolean
