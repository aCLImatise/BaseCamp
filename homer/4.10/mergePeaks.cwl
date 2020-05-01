#!/usr/bin/env cwl-runner

baseCommand:
- mergePeaks
class: CommandLineTool
cwlVersion: v1.0
id: mergepeaks
inputs:
- doc: '(Only merge/consider peaks on the same strand, default: either strand)'
  id: strand
  inputBinding:
    prefix: -strand
  type: boolean
- doc: '<#|given> (Maximum distance between peak centers to merge, default: given)
    Using "-d given" looks for literal overlaps in peak regions - DEFAULT since v4.4
    Use "-d given" when features have vastly different sizes (i.e. peaks vs. introns)'
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
- doc: '(output venn diagram numbers to file, default: to stderr)'
  id: venn
  inputBinding:
    prefix: -venn
  type: File
- doc: (report peak membership as binary instead of by file names)
  id: code
  inputBinding:
    prefix: -code
  type: boolean
- doc: (generates similar files to above with pairwise overlap statistics)
  id: matrix
  inputBinding:
    prefix: -matrix
  type: File
- doc: :XXX-YYY (only analyze peaks within range)
  id: filter
  inputBinding:
    prefix: -filter
  type: string
- doc: (returns the total bp covered by each peak file - use "-d given"
  id: coverage
  inputBinding:
    prefix: -coverage
  type: string
