#!/usr/bin/env cwl-runner

baseCommand:
- insert-length-histogram
class: CommandLineTool
cwlVersion: v1.0
id: insert-length-histogram
inputs:
- doc: '[ --min_count_per_bin ] arg (=20) Minimum number of counts per bin. If  necessary,
    bins are joined to reach this number of counts.'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: "[ --mean_and_sd ] arg             Write (robustly estimated) mean and  standard\
    \ deviation of main peak to given filename. If used together with option  -R,\
    \ the filename must contain the  wildcard '{readgroup}' which is replaced by the\
    \ actual read group."
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '[ --gaussian_values ]             Print forth column: probability based on
    Gaussian estimated from main peak.'
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: Input BAM file is sorted by position
  id: sorted
  inputBinding:
    prefix: --sorted
  type: boolean
- doc: '[ --count ] arg (=1000000)        Number of uniquely mappable read pairs  to
    process.'
  id: c
  inputBinding:
    prefix: -C
  type: boolean
- doc: Read all alignments rather than only the number given in option -C
  id: all
  inputBinding:
    prefix: --all
  type: boolean
- doc: "[ --output ] arg                  Filename for output to be written to  (default:\
    \ stdout). If used together with option -R, the filename must contain the wildcard\
    \ '{readgroup}' which is replaced by the actual read group."
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '[ --readgroupwise ]               Report a separate distributions for each
    read group. Must be used in connection  with option -o.'
  id: r
  inputBinding:
    prefix: -R
  type: boolean
- doc: '[ --readgrouplist ] arg           Write list of encountered read groups to
    given filename. Format: <readgroup>  <distribution-filename>.'
  id: l
  inputBinding:
    prefix: -L
  type: boolean
