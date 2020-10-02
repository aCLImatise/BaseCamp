class: CommandLineTool
id: filterCorrectionOverlaps.cwl
inputs:
- id: in_input_reads
  doc: input reads
  type: string
  inputBinding:
    prefix: -S
- id: in_input_overlaps
  doc: input overlaps
  type: string
  inputBinding:
    prefix: -O
- id: in_scores
  doc: "output scores for each read, binary file, to file 'sf'\nper-read logging to\
    \ 'sf.log' (see -nolog)\nsummary statistics to 'sf.stats' (see -nostats)"
  type: File
  inputBinding:
    prefix: -scores
- id: in_estimate
  doc: estimate the cutoff from precomputed scores
  type: boolean
  inputBinding:
    prefix: -estimate
- id: in_exact
  doc: compute an exact cutoff by reading all overlaps
  type: boolean
  inputBinding:
    prefix: -exact
- id: in_compare
  doc: output a comparison of estimated vs exact scores
  type: boolean
  inputBinding:
    prefix: -compare
- id: in_retain_most_many
  doc: retain at most this many overlaps per read
  type: string
  inputBinding:
    prefix: -c
- id: in_filter_overlaps_shorter
  doc: filter overlaps shorter than this length
  type: long
  inputBinding:
    prefix: -l
- id: in_minmax_filter_overlaps
  doc: "(min-)max    filter overlaps outside this range of fraction error\nexample:\
    \  -e 0.20          filter overlaps above 20% error\nexample:  -e 0.05-0.20  \
    \   filter overlaps below 5% error\nor above 20% error"
  type: boolean
  inputBinding:
    prefix: -e
- id: in_no_log
  doc: don't create 'scoreFile.log'
  type: boolean
  inputBinding:
    prefix: -nolog
- id: in_no_stats
  doc: don't create 'scoreFile.stats'
  type: boolean
  inputBinding:
    prefix: -nostats
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_scores
  doc: "output scores for each read, binary file, to file 'sf'\nper-read logging to\
    \ 'sf.log' (see -nolog)\nsummary statistics to 'sf.stats' (see -nostats)"
  type: File
  outputBinding:
    glob: $(inputs.in_scores)
cwlVersion: v1.1
baseCommand:
- filterCorrectionOverlaps
