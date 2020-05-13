class: CommandLineTool
id: mace.py.cwl
inputs:
- id: forward
  doc: BigWig format file containing coverage calcualted from reads mapped to *forward*
    strand.
  type: string
  inputBinding:
    prefix: --forward
- id: reverse
  doc: BigWig format file containing coverage calcualted from reads mapped to *reverse*
    strand.
  type: string
  inputBinding:
    prefix: --reverse
- id: chrom_size
  doc: 'Chromosome size file. Tab or space separated text file with 2 columns: first
    column contains chromosome name, second column contains chromosome size. Example:chr1
    249250621 <NewLine> chr2        243199373 <NewLine> chr3        198022430 <NewLine>
    ...'
  type: string
  inputBinding:
    prefix: --chromSize
- id: out_prefix
  doc: "Prefix of output files. NOTE: if 'prefix.border.bed' exists and was non-empty,\
    \ peak calling step will be skipped! So if you want to rerun mace.py from scratch,\
    \ use different 'prefix' or delete old 'prefix.border.bed' before starting."
  type: string
  inputBinding:
    prefix: --out-prefix
- id: p_value
  doc: Pvalue cutoff for border detection and subsequent border pairing. default=0.05
  type: string
  inputBinding:
    prefix: --pvalue
- id: max_dist
  doc: Maximum distance allowed for border pairing. default=100
  type: long
  inputBinding:
    prefix: --max-dist
- id: fz_window
  doc: Peaks located closely within this window will be merged. default=5 (bp)
  type: string
  inputBinding:
    prefix: --fz-window
- id: bg_window
  doc: Background window size used to determine background signal level. default=100
    (bp)
  type: string
  inputBinding:
    prefix: --bg-window
- id: fold
  doc: Minmum coverage signal used to build model (i.e. estimate optimal peak pair
    size). default=2.0
  type: string
  inputBinding:
    prefix: --fold
outputs: []
cwlVersion: v1.1
baseCommand:
- mace.py
