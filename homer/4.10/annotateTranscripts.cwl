#!/usr/bin/env cwl-runner

baseCommand:
- annotateTranscripts.pl
class: CommandLineTool
cwlVersion: v1.0
id: annotatetranscripts.pl
inputs:
- doc: (skip repeat annotation)
  id: no_repeats
  inputBinding:
    prefix: -noRepeats
  type: boolean
- doc: <#> (Min fraction of overlap to assign transcript as genic, 0.1)
  id: min_overlap
  inputBinding:
    prefix: -minOverlap
  type: boolean
- doc: '<#> (to identify TSS antisense transcripts vs. enhancers, default: 500)'
  id: promoter_size
  inputBinding:
    prefix: -promoterSize
  type: boolean
- doc: '<#> (size from beginning of transcript to use for repeat ann, default: 500)'
  id: repeat_size
  inputBinding:
    prefix: -repeatSize
  type: boolean
- doc: (to asses rpkm, merge fragments of same gene)
  id: d
  inputBinding:
    prefix: -d
  type: string
- doc: '<#> (minimum rpkm, default: 0.01)'
  id: min
  inputBinding:
    prefix: -min
  type: boolean
- doc: '<#> (minimum number of unique reads, default: 10)'
  id: min_p
  inputBinding:
    prefix: -minp
  type: boolean
- doc: '<+|-|both> (strand to search for reads, default: +)'
  id: strand
  inputBinding:
    prefix: -strand
  type: boolean
- doc: <#> (maximum fold difference for adjacent transcripts to be merged, e.g. 2)
  id: merge
  inputBinding:
    prefix: -merge
  type: boolean
