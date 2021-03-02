class: CommandLineTool
id: annotateTranscripts.pl.cwl
inputs:
- id: in_no_repeats
  doc: (skip repeat annotation)
  type: boolean?
  inputBinding:
    prefix: -noRepeats
- id: in_min_overlap
  doc: <#> (Min fraction of overlap to assign transcript as genic, 0.1)
  type: boolean?
  inputBinding:
    prefix: -minOverlap
- id: in_promoter_size
  doc: '<#> (to identify TSS antisense transcripts vs. enhancers, default: 500)'
  type: boolean?
  inputBinding:
    prefix: -promoterSize
- id: in_repeat_size
  doc: '<#> (size from beginning of transcript to use for repeat ann, default: 500)'
  type: boolean?
  inputBinding:
    prefix: -repeatSize
- id: in_asses_rpkm_fragments
  doc: (to asses rpkm, merge fragments of same gene)
  type: Directory?
  inputBinding:
    prefix: -d
- id: in_min
  doc: '<#> (minimum rpkm, default: 0.01)'
  type: boolean?
  inputBinding:
    prefix: -min
- id: in_min_p
  doc: '<#> (minimum number of unique reads, default: 10)'
  type: boolean?
  inputBinding:
    prefix: -minp
- id: in_strand
  doc: '<+|-|both> (strand to search for reads, default: +)'
  type: boolean?
  inputBinding:
    prefix: -strand
- id: in_merge
  doc: <#> (maximum fold difference for adjacent transcripts to be merged, e.g. 2)
  type: boolean?
  inputBinding:
    prefix: -merge
- id: in_transcript_peak_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_genome
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- annotateTranscripts.pl
