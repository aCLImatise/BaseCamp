class: CommandLineTool
id: mimeo_filter.cwl
inputs:
- id: in_in_file
  doc: Name of directory containing sequences from A genome.
  type: File
  inputBinding:
    prefix: --infile
- id: in_outdir
  doc: 'Write output files to this directory. (Default: cwd)'
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_outfile
  doc: Name of alignment result file.
  type: File
  inputBinding:
    prefix: --outfile
- id: in_keep_temp
  doc: If set do not remove temp files.
  type: boolean
  inputBinding:
    prefix: --keeptemp
- id: in_verbose
  doc: If set report LASTZ progress.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_trf_path
  doc: Custom path to TRF executable if not in $PATH.
  type: File
  inputBinding:
    prefix: --TRFpath
- id: in_t_match
  doc: TRF matching weight
  type: string
  inputBinding:
    prefix: --tmatch
- id: in_t_mismatch
  doc: TRF mismatching penalty
  type: string
  inputBinding:
    prefix: --tmismatch
- id: in_t_delta
  doc: TRF indel penalty
  type: string
  inputBinding:
    prefix: --tdelta
- id: in_tpm
  doc: TRF match probability
  type: string
  inputBinding:
    prefix: --tPM
- id: in_tpi
  doc: TRF indel probability
  type: string
  inputBinding:
    prefix: --tPI
- id: in_tm_in_score
  doc: TRF minimum alignment score to report
  type: string
  inputBinding:
    prefix: --tminscore
- id: in_tmax_period
  doc: "TRF maximum period size to report. Note: Setting this\nscore too high may\
    \ exclude some LTR retrotransposons.\nOptimal len to exclude only SSRs is 10-50bp."
  type: long
  inputBinding:
    prefix: --tmaxperiod
- id: in_max_tandem
  doc: "Max percentage of a sequence which may be masked by\nTRF. If exceeded, element\
    \ will be discarded.\n"
  type: long
  inputBinding:
    prefix: --maxtandem
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: 'Write output files to this directory. (Default: cwd)'
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- mimeo-filter
