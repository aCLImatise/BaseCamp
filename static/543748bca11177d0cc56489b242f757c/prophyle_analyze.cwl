class: CommandLineTool
id: prophyle_analyze.py.cwl
inputs:
- id: s
  doc: "['w', 'u', 'wl', 'ul'] Statistics to use for the computation of histograms:\
    \ w (default) => weighted assignments; u => unique assignments, non-weighted;\
    \ wl => weighted assignments, propagated to leaves; ul => unique assignments,\
    \ propagated to leaves."
  type: boolean
  inputBinding:
    prefix: -s
- id: f
  doc: "['sam', 'bam', 'cram', 'uncompressed_bam', 'kraken', 'histo'] Input format\
    \ of assignments [auto]. If 'histo' is selected the program expects hit count\
    \ histograms (*_rawhits.tsv) previously computed using prophyle analyze, it merges\
    \ them and compute OTU table from the result (assignment files are not required)"
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- prophyle_analyze.py
