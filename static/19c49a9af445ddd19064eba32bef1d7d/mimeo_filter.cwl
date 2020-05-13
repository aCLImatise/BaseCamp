class: CommandLineTool
id: mimeo_filter.cwl
inputs:
- id: in_file
  doc: Name of directory containing sequences from A genome.
  type: string
  inputBinding:
    prefix: --infile
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
- id: keep_temp
  doc: If set do not remove temp files.
  type: boolean
  inputBinding:
    prefix: --keeptemp
- id: verbose
  doc: If set report LASTZ progress.
  type: boolean
  inputBinding:
    prefix: --verbose
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
  doc: 'TRF maximum period size to report. Note: Setting this score too high may exclude
    some LTR retrotransposons. Optimal len to exclude only SSRs is 10-50bp.'
  type: string
  inputBinding:
    prefix: --tmaxperiod
- id: max_tandem
  doc: Max percentage of a sequence which may be masked by TRF. If exceeded, element
    will be discarded.
  type: long
  inputBinding:
    prefix: --maxtandem
outputs: []
cwlVersion: v1.1
baseCommand:
- mimeo-filter
