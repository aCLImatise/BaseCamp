class: CommandLineTool
id: insert_length_histogram.cwl
inputs:
- id: c
  doc: '[ --min_count_per_bin ] arg (=20) Minimum number of counts per bin. If  necessary,
    bins are joined to reach this number of counts.'
  type: boolean
  inputBinding:
    prefix: -c
- id: m
  doc: "[ --mean_and_sd ] arg             Write (robustly estimated) mean and  standard\
    \ deviation of main peak to given filename. If used together with option  -R,\
    \ the filename must contain the  wildcard '{readgroup}' which is replaced by the\
    \ actual read group."
  type: boolean
  inputBinding:
    prefix: -m
- id: g
  doc: '[ --gaussian_values ]             Print forth column: probability based on
    Gaussian estimated from main peak.'
  type: boolean
  inputBinding:
    prefix: -g
- id: sorted
  doc: Input BAM file is sorted by position
  type: boolean
  inputBinding:
    prefix: --sorted
- id: c
  doc: '[ --count ] arg (=1000000)        Number of uniquely mappable read pairs  to
    process.'
  type: boolean
  inputBinding:
    prefix: -C
- id: all
  doc: Read all alignments rather than only the number given in option -C
  type: boolean
  inputBinding:
    prefix: --all
- id: o
  doc: "[ --output ] arg                  Filename for output to be written to  (default:\
    \ stdout). If used together with option -R, the filename must contain the wildcard\
    \ '{readgroup}' which is replaced by the actual read group."
  type: boolean
  inputBinding:
    prefix: -o
- id: r
  doc: '[ --readgroupwise ]               Report a separate distributions for each
    read group. Must be used in connection  with option -o.'
  type: boolean
  inputBinding:
    prefix: -R
- id: l
  doc: '[ --readgrouplist ] arg           Write list of encountered read groups to
    given filename. Format: <readgroup>  <distribution-filename>.'
  type: boolean
  inputBinding:
    prefix: -L
outputs: []
cwlVersion: v1.1
baseCommand:
- insert-length-histogram
