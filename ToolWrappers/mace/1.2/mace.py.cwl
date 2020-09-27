class: CommandLineTool
id: mace.py.cwl
inputs:
- id: in_forward
  doc: "BigWig format file containing coverage calcualted from\nreads mapped to *forward*\
    \ strand."
  type: File
  inputBinding:
    prefix: --forward
- id: in_reverse
  doc: "BigWig format file containing coverage calcualted from\nreads mapped to *reverse*\
    \ strand."
  type: File
  inputBinding:
    prefix: --reverse
- id: in_chrom_size
  doc: "Chromosome size file. Tab or space separated text file\nwith 2 columns: first\
    \ column contains chromosome name,\nsecond column contains chromosome size. Example:chr1\n\
    249250621 <NewLine> chr2        243199373 <NewLine>\nchr3        198022430 <NewLine>\
    \ ..."
  type: long
  inputBinding:
    prefix: --chromSize
- id: in_out_prefix
  doc: "Prefix of output files. NOTE: if 'prefix.border.bed'\nexists and was non-empty,\
    \ peak calling step will be\nskipped! So if you want to rerun mace.py from scratch,\n\
    use different 'prefix' or delete old\n'prefix.border.bed' before starting."
  type: string
  inputBinding:
    prefix: --out-prefix
- id: in_p_value
  doc: "Pvalue cutoff for border detection and subsequent\nborder pairing. default=0.05"
  type: double
  inputBinding:
    prefix: --pvalue
- id: in_max_dist
  doc: "Maximum distance allowed for border pairing.\ndefault=100"
  type: long
  inputBinding:
    prefix: --max-dist
- id: in_fz_window
  doc: "Peaks located closely within this window will be\nmerged. default=5 (bp)"
  type: long
  inputBinding:
    prefix: --fz-window
- id: in_bg_window
  doc: "Background window size used to determine background\nsignal level. default=100\
    \ (bp)"
  type: long
  inputBinding:
    prefix: --bg-window
- id: in_fold
  doc: "Minmum coverage signal used to build model (i.e.\nestimate optimal peak pair\
    \ size). default=2.0\n"
  type: long
  inputBinding:
    prefix: --fold
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mace.py
