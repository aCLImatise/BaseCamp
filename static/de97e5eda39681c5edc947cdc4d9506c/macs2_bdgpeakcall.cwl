class: CommandLineTool
id: macs2_bdgpeakcall.cwl
inputs:
- id: i_file
  doc: MACS score in bedGraph. REQUIRED
  type: string
  inputBinding:
    prefix: --ifile
- id: cut_off
  doc: 'Cutoff depends on which method you used for score track. If the file contains
    pvalue scores from MACS2, score 5 means pvalue 1e-5. DEFAULT: 5'
  type: string
  inputBinding:
    prefix: --cutoff
- id: min_length
  doc: 'minimum length of peak, better to set it as d value. DEFAULT: 200'
  type: long
  inputBinding:
    prefix: --min-length
- id: max_gap
  doc: 'maximum gap between significant points in a peak, better to set it as tag
    size. DEFAULT: 30'
  type: long
  inputBinding:
    prefix: --max-gap
- id: cut_off_analysis
  doc: 'While set, bdgpeakcall will analyze number or total length of peaks that can
    be called by different cutoff then output a summary table to help user decide
    a better cutoff. Note, minlen and maxgap may affect the results. DEFAULT: False'
  type: boolean
  inputBinding:
    prefix: --cutoff-analysis
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
- bdgpeakcall
