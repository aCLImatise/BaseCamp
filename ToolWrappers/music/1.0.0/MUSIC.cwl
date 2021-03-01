class: CommandLineTool
id: MUSIC.cwl
inputs:
- id: in_preprocess
  doc: '[File format ("SAM"/"ELAND"/"bowtie"/"tagAlign"/"BED5"/"BED6")] [Mapped reads
    file path ("stdin" for piped input)] [Output directory]'
  type: boolean?
  inputBinding:
    prefix: -preprocess
- id: in_sort_reads
  doc: '[Reads directory] [Output directory]'
  type: Directory?
  inputBinding:
    prefix: -sort_reads
- id: in_remove_duplicates
  doc: '[Sorted reads directory] [Max # of duplicates per position] [Output directory]'
  type: boolean?
  inputBinding:
    prefix: -remove_duplicates
- id: in_get_multiscale_broad_ers
  doc: '[Options/Values]'
  type: boolean?
  inputBinding:
    prefix: -get_multiscale_broad_ERs
- id: in_get_multiscale_punctate_ers
  doc: '[Options/Values]'
  type: boolean?
  inputBinding:
    prefix: -get_multiscale_punctate_ERs
- id: in_get_tf_peaks
  doc: '[Options/Values]'
  type: boolean?
  inputBinding:
    prefix: -get_TF_peaks
- id: in_write_ms_decomposition
  doc: '[Options/Values]'
  type: boolean?
  inputBinding:
    prefix: -write_MS_decomposition
- id: in_write_log_r_signal
  doc: '[Options/Values]'
  type: boolean?
  inputBinding:
    prefix: -write_logR_signal
- id: in_get_per_win_p_vals_vs_fc
  doc: '[Options/Values]'
  type: boolean?
  inputBinding:
    prefix: -get_per_win_p_vals_vs_FC
- id: in_get_scale_spectrum
  doc: '[Options/Values]'
  type: boolean?
  inputBinding:
    prefix: -get_scale_spectrum
- id: in_get_multiscale_music
  doc: '[Options/Values]'
  type: boolean?
  inputBinding:
    prefix: -get_multiscale_music
- id: in_chip
  doc: '[ChIP reads directory]'
  type: boolean?
  inputBinding:
    prefix: -chip
- id: in_control
  doc: '[control reads directory]'
  type: boolean?
  inputBinding:
    prefix: -control
- id: in_mapp
  doc: '[multi-mapability profiles directory]'
  type: boolean?
  inputBinding:
    prefix: -mapp
- id: in_begin_l
  doc: '[First scale smoothing window length (1000)]'
  type: boolean?
  inputBinding:
    prefix: -begin_l
- id: in_end_l
  doc: '[Last scale smoothing window length (16000)]'
  type: boolean?
  inputBinding:
    prefix: -end_l
- id: in_step
  doc: '[Multiplicative window length step (1.5)]'
  type: boolean?
  inputBinding:
    prefix: -step
- id: in_l_bin
  doc: '[Bin size in nucleotides (5)]'
  type: boolean?
  inputBinding:
    prefix: -l_bin
- id: in_l_mapp
  doc: '[Read length of multi-mapability profiles]'
  type: boolean?
  inputBinding:
    prefix: -l_mapp
- id: in_mapp_thr
  doc: '[Multi-mapability signal threshold used in correction (1.2)]'
  type: boolean?
  inputBinding:
    prefix: -mapp_thr
- id: in_l_frag
  doc: '[Fragment length (200)]'
  type: boolean?
  inputBinding:
    prefix: -l_frag
- id: in_l_c
  doc: '[Mapability correction window length (2000)]'
  type: boolean?
  inputBinding:
    prefix: -l_c
- id: in_l_p
  doc: '[Normalization window length for p-value computation]'
  type: boolean?
  inputBinding:
    prefix: -l_p
- id: in_sigma
  doc: '[min(Fore/Back, Back/Fore) (.5)]'
  type: boolean?
  inputBinding:
    prefix: -sigma
- id: in_gamma
  doc: '[Min threshold for unsmoothed/smoothed (4)]'
  type: boolean?
  inputBinding:
    prefix: -gamma
- id: in_q_val
  doc: '[Maximum q-value for the reported ERs]'
  type: boolean?
  inputBinding:
    prefix: -q_val
- id: in_l_win_min
  doc: '[Minimum p-val window length (100)]'
  type: boolean?
  inputBinding:
    prefix: -l_win_min
- id: in_l_win_max
  doc: '[Maximum p-val window length (5000)]'
  type: boolean?
  inputBinding:
    prefix: -l_win_max
- id: in_l_win_step
  doc: '[p-val window length step (250)]'
  type: boolean?
  inputBinding:
    prefix: -l_win_step
- id: in_arguments
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_sort_reads
  doc: '[Reads directory] [Output directory]'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_sort_reads)
hints: []
cwlVersion: v1.1
baseCommand:
- MUSIC
