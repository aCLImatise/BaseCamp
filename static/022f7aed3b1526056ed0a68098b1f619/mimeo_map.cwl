class: CommandLineTool
id: mimeo_map.cwl
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
  doc: Name of GFF3 annotation file. If not set, suppress output.
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
  doc: ID prefix for B-genome hits annotated in A-genome.
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
  doc: Set HSP min score threshold for LASTZ.
  type: string
  inputBinding:
    prefix: --hspthresh
- id: trf_path
  doc: Custom path to TRF executable if not in $PATH.
  type: string
  inputBinding:
    prefix: --TRFpath
- id: t_match
  doc: TRF matching weight
  type: string
  inputBinding:
    prefix: --tmatch
- id: t_mismatch
  doc: TRF mismatching penalty
  type: string
  inputBinding:
    prefix: --tmismatch
- id: t_delta
  doc: TRF indel penalty
  type: string
  inputBinding:
    prefix: --tdelta
- id: tpm
  doc: TRF match probability
  type: string
  inputBinding:
    prefix: --tPM
- id: tpi
  doc: TRF indel probability
  type: string
  inputBinding:
    prefix: --tPI
- id: tm_in_score
  doc: TRF minimum alignment score to report
  type: string
  inputBinding:
    prefix: --tminscore
- id: tmax_period
  doc: TRF maximum period size to report
  type: string
  inputBinding:
    prefix: --tmaxperiod
- id: max_tandem
  doc: Max percentage of an A-genome alignment which may be masked by TRF. If exceeded,
    alignment will be discarded.
  type: long
  inputBinding:
    prefix: --maxtandem
- id: write_trf
  doc: If set write TRF filtered alignment file for use with other mimeo modules.
  type: boolean
  inputBinding:
    prefix: --writeTRF
outputs: []
cwlVersion: v1.1
baseCommand:
- mimeo-map
