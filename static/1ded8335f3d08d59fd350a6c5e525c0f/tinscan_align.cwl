class: CommandLineTool
id: tinscan_align.cwl
inputs:
- id: a_dir
  doc: Name of directory containing sequences from A genome.
  type: string
  inputBinding:
    prefix: --adir
- id: b_dir
  doc: Name of directory containing sequences from B genome.
  type: string
  inputBinding:
    prefix: --bdir
- id: pairs
  doc: 'Optional: Tab-delimited 2-col file specifying target:query sequence pairs
    to be aligned'
  type: string
  inputBinding:
    prefix: --pairs
- id: outdir
  doc: 'Write output files to this directory. (Default: cwd)'
  type: string
  inputBinding:
    prefix: --outdir
- id: outfile
  doc: Name of alignment result file.
  type: string
  inputBinding:
    prefix: --outfile
- id: verbose
  doc: If set report LASTZ progress.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: lz_path
  doc: Custom path to LASTZ executable if not in $PATH.
  type: string
  inputBinding:
    prefix: --lzpath
- id: mini_dt
  doc: Minimum alignment identity to report.
  type: long
  inputBinding:
    prefix: --minIdt
- id: min_len
  doc: Minimum alignment length to report.
  type: long
  inputBinding:
    prefix: --minLen
- id: hsp_thresh
  doc: LASTZ min HSP threshold. Increase for stricter matches.
  type: string
  inputBinding:
    prefix: --hspthresh
outputs: []
cwlVersion: v1.1
baseCommand:
- tinscan-align
