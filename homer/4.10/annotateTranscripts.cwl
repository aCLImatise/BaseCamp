class: CommandLineTool
id: annotateTranscripts.pl.cwl
inputs:
- id: no_repeats
  doc: (skip repeat annotation)
  type: boolean
  inputBinding:
    prefix: -noRepeats
- id: min_overlap
  doc: <#> (Min fraction of overlap to assign transcript as genic, 0.1)
  type: boolean
  inputBinding:
    prefix: -minOverlap
- id: promoter_size
  doc: '<#> (to identify TSS antisense transcripts vs. enhancers, default: 500)'
  type: boolean
  inputBinding:
    prefix: -promoterSize
- id: repeat_size
  doc: '<#> (size from beginning of transcript to use for repeat ann, default: 500)'
  type: boolean
  inputBinding:
    prefix: -repeatSize
- id: d
  doc: (to asses rpkm, merge fragments of same gene)
  type: string
  inputBinding:
    prefix: -d
- id: min
  doc: '<#> (minimum rpkm, default: 0.01)'
  type: boolean
  inputBinding:
    prefix: -min
- id: min_p
  doc: '<#> (minimum number of unique reads, default: 10)'
  type: boolean
  inputBinding:
    prefix: -minp
- id: strand
  doc: '<+|-|both> (strand to search for reads, default: +)'
  type: boolean
  inputBinding:
    prefix: -strand
- id: merge
  doc: <#> (maximum fold difference for adjacent transcripts to be merged, e.g. 2)
  type: boolean
  inputBinding:
    prefix: -merge
outputs: []
cwlVersion: v1.1
baseCommand:
- annotateTranscripts.pl
