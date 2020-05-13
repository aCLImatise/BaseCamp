class: CommandLineTool
id: mimeo_self.cwl
inputs:
- id: a_dir
  doc: Name of directory containing sequences from genome. Write split files here
    if providing genome as multifasta.
  type: string
  inputBinding:
    prefix: --adir
- id: a_fast_a
  doc: Genome as multifasta.
  type: string
  inputBinding:
    prefix: --afasta
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
  doc: ID prefix for internal repeats.
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
  doc: Minimum depth of aligned segments to report repeat feature.
  type: long
  inputBinding:
    prefix: --minCov
- id: hsp_thresh
  doc: Set HSP min score threshold for LASTZ.
  type: string
  inputBinding:
    prefix: --hspthresh
- id: intra_cov
  doc: Minimum depth of aligned segments from same scaffold to report feature. Used
    if "--strictSelf" mode is selected.
  type: long
  inputBinding:
    prefix: --intraCov
- id: strict_self
  doc: If set process same-scaffold alignments separately with option to use higher
    "--intraCov" threshold. Sometime useful to avoid false repeat calls from staggered
    alignments over SSRs or short tandem duplication.
  type: boolean
  inputBinding:
    prefix: --strictSelf
outputs: []
cwlVersion: v1.1
baseCommand:
- mimeo-self
