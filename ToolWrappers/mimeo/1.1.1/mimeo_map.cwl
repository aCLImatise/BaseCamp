class: CommandLineTool
id: mimeo_map.cwl
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
- id: in_a_fast_a
  doc: A genome as multifasta.
  type: string?
  inputBinding:
    prefix: --afasta
- id: in_b_fast_a
  doc: B genome as multifasta.
  type: string?
  inputBinding:
    prefix: --bfasta
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
  doc: Name of GFF3 annotation file. If not set, suppress
  type: File?
  inputBinding:
    prefix: --gffout
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
  doc: ID prefix for B-genome hits annotated in A-genome.
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
  doc: Set HSP min score threshold for LASTZ.
  type: long?
  inputBinding:
    prefix: --hspthresh
- id: in_trf_path
  doc: Custom path to TRF executable if not in $PATH.
  type: File?
  inputBinding:
    prefix: --TRFpath
- id: in_t_match
  doc: TRF matching weight
  type: string?
  inputBinding:
    prefix: --tmatch
- id: in_t_mismatch
  doc: TRF mismatching penalty
  type: string?
  inputBinding:
    prefix: --tmismatch
- id: in_t_delta
  doc: TRF indel penalty
  type: string?
  inputBinding:
    prefix: --tdelta
- id: in_tpm
  doc: TRF match probability
  type: string?
  inputBinding:
    prefix: --tPM
- id: in_tpi
  doc: TRF indel probability
  type: string?
  inputBinding:
    prefix: --tPI
- id: in_tm_in_score
  doc: TRF minimum alignment score to report
  type: string?
  inputBinding:
    prefix: --tminscore
- id: in_tmax_period
  doc: TRF maximum period size to report
  type: long?
  inputBinding:
    prefix: --tmaxperiod
- id: in_max_tandem
  doc: "Max percentage of an A-genome alignment which may be\nmasked by TRF. If exceeded,\
    \ alignment will be\ndiscarded."
  type: long?
  inputBinding:
    prefix: --maxtandem
- id: in_write_trf
  doc: "If set write TRF filtered alignment file for use with\nother mimeo modules.\n"
  type: boolean?
  inputBinding:
    prefix: --writeTRF
- id: in_output_dot
  doc: --outfile OUTFILE     Name of alignment result file.
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
- mimeo-map
