class: CommandLineTool
id: mimeo_self.cwl
inputs:
- id: in_a_dir
  doc: "Name of directory containing sequences from genome.\nWrite split files here\
    \ if providing genome as\nmultifasta."
  type: Directory?
  inputBinding:
    prefix: --adir
- id: in_a_fast_a
  doc: Genome as multifasta.
  type: string?
  inputBinding:
    prefix: --afasta
- id: in_recycle
  doc: Use existing alignment "--outfile" if found.
  type: boolean?
  inputBinding:
    prefix: --recycle
- id: in_outdir
  doc: 'Write output files to this directory. (Default: cwd)'
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_gff_out
  doc: Name of GFF3 annotation file.
  type: File?
  inputBinding:
    prefix: --gffout
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
- id: in_label
  doc: Set annotation TYPE field in gff.
  type: string?
  inputBinding:
    prefix: --label
- id: in_prefix
  doc: ID prefix for internal repeats.
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_keep_temp
  doc: If set do not remove temp files.
  type: boolean?
  inputBinding:
    prefix: --keeptemp
- id: in_lz_path
  doc: Custom path to LASTZ executable if not in $PATH.
  type: File?
  inputBinding:
    prefix: --lzpath
- id: in_bed_tools
  doc: Custom path to bedtools executable if not in $PATH.
  type: File?
  inputBinding:
    prefix: --bedtools
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
- id: in_min_cov
  doc: Minimum depth of aligned segments to report repeat
  type: long?
  inputBinding:
    prefix: --minCov
- id: in_intra_cov
  doc: "Minimum depth of aligned segments from same scaffold\nto report feature. Used\
    \ if \"--strictSelf\" mode is\nselected."
  type: string?
  inputBinding:
    prefix: --intraCov
- id: in_strict_self
  doc: "If set process same-scaffold alignments separately\nwith option to use higher\
    \ \"--intraCov\" threshold.\nSometime useful to avoid false repeat calls from\n\
    staggered alignments over SSRs or short tandem\nduplication.\n"
  type: boolean?
  inputBinding:
    prefix: --strictSelf
- id: in_feature_dot
  doc: --hspthresh HSPTHRESH
  type: string
  inputBinding:
    position: 0
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
- mimeo-self
