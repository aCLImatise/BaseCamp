class: CommandLineTool
id: mimeo_x.cwl
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
- id: a_fast_a
  doc: A genome as multifasta.
  type: string
  inputBinding:
    prefix: --afasta
- id: b_fast_a
  doc: B genome as multifasta.
  type: string
  inputBinding:
    prefix: --bfasta
- id: recycle
  doc: Use existing alignment "--outfile" if found.
  type: boolean
  inputBinding:
    prefix: --recycle
- id: outdir
  doc: 'Write output files to this directory. (Default: cwd)'
  type: string
  inputBinding:
    prefix: --outdir
- id: gff_out
  doc: Name of GFF3 annotation file.
  type: string
  inputBinding:
    prefix: --gffout
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
- id: label
  doc: Set annotation TYPE field in gff.
  type: string
  inputBinding:
    prefix: --label
- id: prefix
  doc: ID prefix for B-genome repeats annotated in A-genome.
  type: string
  inputBinding:
    prefix: --prefix
- id: keep_temp
  doc: If set do not remove temp files.
  type: boolean
  inputBinding:
    prefix: --keeptemp
- id: lz_path
  doc: Custom path to LASTZ executable if not in $PATH.
  type: string
  inputBinding:
    prefix: --lzpath
- id: bed_tools
  doc: Custom path to bedtools executable if not in $PATH.
  type: string
  inputBinding:
    prefix: --bedtools
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
- id: min_cov
  doc: Minimum depth of B-genome hits to report feature in A-genome.
  type: long
  inputBinding:
    prefix: --minCov
- id: hsp_thresh
  doc: Set HSP min score threshold for LASTZ.
  type: string
  inputBinding:
    prefix: --hspthresh
outputs: []
cwlVersion: v1.1
baseCommand:
- mimeo-x
