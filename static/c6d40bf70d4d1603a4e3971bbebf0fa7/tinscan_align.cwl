class: CommandLineTool
id: tinscan_align.cwl
inputs:
- id: in_a_dir
  doc: Name of directory containing sequences from A genome.
  type: Directory?
  inputBinding:
    prefix: --adir
- id: in_b_dir
  doc: Name of directory containing sequences from B genome.
  type: Directory?
  inputBinding:
    prefix: --bdir
- id: in_pairs
  doc: "Optional: Tab-delimited 2-col file specifying\ntarget:query sequence pairs\
    \ to be aligned"
  type: File?
  inputBinding:
    prefix: --pairs
- id: in_outdir
  doc: 'Write output files to this directory. (Default: cwd)'
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_outfile
  doc: Name of alignment result file.
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_verbose
  doc: If set report LASTZ progress.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_lz_path
  doc: Custom path to LASTZ executable if not in $PATH.
  type: File?
  inputBinding:
    prefix: --lzpath
- id: in_mini_dt
  doc: Minimum alignment identity to report.
  type: string?
  inputBinding:
    prefix: --minIdt
- id: in_min_len
  doc: Minimum alignment length to report.
  type: long?
  inputBinding:
    prefix: --minLen
- id: in_hsp_thresh
  doc: "LASTZ min HSP threshold. Increase for stricter\nmatches.\n"
  type: long?
  inputBinding:
    prefix: --hspthresh
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: 'Write output files to this directory. (Default: cwd)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- tinscan-align
