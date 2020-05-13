class: CommandLineTool
id: macs2_bdgbroadcall.cwl
inputs:
- id: i_file
  doc: MACS score in bedGraph. REQUIRED
  type: string
  inputBinding:
    prefix: --ifile
- id: cut_off_peak
  doc: 'Cutoff for peaks depending on which method you used for score track. If the
    file contains qvalue scores from MACS2, score 2 means qvalue 0.01. DEFAULT: 2'
  type: string
  inputBinding:
    prefix: --cutoff-peak
- id: cut_off_link
  doc: 'Cutoff for linking regions/low abundance regions depending on which method
    you used for score track. If the file contains qvalue scores from MACS2, score
    1 means qvalue 0.1, and score 0.3 means qvalue 0.5. DEFAULT: 1'
  type: string
  inputBinding:
    prefix: --cutoff-link
- id: min_length
  doc: 'minimum length of peak, better to set it as d value. DEFAULT: 200'
  type: long
  inputBinding:
    prefix: --min-length
- id: lvl1_max_gap
  doc: 'maximum gap between significant peaks, better to set it as tag size. DEFAULT:
    30'
  type: string
  inputBinding:
    prefix: --lvl1-max-gap
- id: lvl2_max_gap
  doc: 'maximum linking between significant peaks, better to set it as 4 times of
    d value. DEFAULT: 800'
  type: string
  inputBinding:
    prefix: --lvl2-max-gap
- id: no_track_line
  doc: Tells MACS not to include trackline with bedGraph files. The trackline is required
    by UCSC.
  type: boolean
  inputBinding:
    prefix: --no-trackline
- id: outdir
  doc: 'If specified all output files will be written to that directory. Default:
    the current working directory'
  type: string
  inputBinding:
    prefix: --outdir
- id: ofile
  doc: Output file name. Mutually exclusive with --o-prefix.
  type: string
  inputBinding:
    prefix: --ofile
- id: o_prefix
  doc: Output file prefix. Mutually exclusive with -o/--ofile.
  type: string
  inputBinding:
    prefix: --o-prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- macs2
- bdgbroadcall
