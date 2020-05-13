class: CommandLineTool
id: MUSIC.cwl
inputs:
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: preprocess
  doc: '[File format ("SAM"/"ELAND"/"bowtie"/"tagAlign"/"BED5"/"BED6")] [Mapped reads
    file path ("stdin" for piped input)] [Output directory]'
  type: boolean
  inputBinding:
    prefix: -preprocess
- id: sort_reads
  doc: '[Reads directory] [Output directory]'
  type: boolean
  inputBinding:
    prefix: -sort_reads
- id: remove_duplicates
  doc: '[Sorted reads directory] [Max # of duplicates per position] [Output directory]'
  type: boolean
  inputBinding:
    prefix: -remove_duplicates
- id: get_multiscale_broad_ers
  doc: '[Options/Values]'
  type: boolean
  inputBinding:
    prefix: -get_multiscale_broad_ERs
- id: get_multiscale_punctate_ers
  doc: '[Options/Values]'
  type: boolean
  inputBinding:
    prefix: -get_multiscale_punctate_ERs
- id: get_tf_peaks
  doc: '[Options/Values]'
  type: boolean
  inputBinding:
    prefix: -get_TF_peaks
- id: write_ms_decomposition
  doc: '[Options/Values]'
  type: boolean
  inputBinding:
    prefix: -write_MS_decomposition
- id: write_log_r_signal
  doc: '[Options/Values]'
  type: boolean
  inputBinding:
    prefix: -write_logR_signal
- id: get_per_win_p_vals_vs_fc
  doc: '[Options/Values]'
  type: boolean
  inputBinding:
    prefix: -get_per_win_p_vals_vs_FC
- id: get_scale_spectrum
  doc: '[Options/Values]'
  type: boolean
  inputBinding:
    prefix: -get_scale_spectrum
- id: get_multiscale_music
  doc: '[Options/Values]'
  type: boolean
  inputBinding:
    prefix: -get_multiscale_music
- id: chip
  doc: '[ChIP reads directory]'
  type: boolean
  inputBinding:
    prefix: -chip
- id: control
  doc: '[control reads directory]'
  type: boolean
  inputBinding:
    prefix: -control
- id: mapp
  doc: '[multi-mapability profiles directory]'
  type: boolean
  inputBinding:
    prefix: -mapp
- id: begin_l
  doc: '[First scale smoothing window length (1000)]'
  type: boolean
  inputBinding:
    prefix: -begin_l
- id: end_l
  doc: '[Last scale smoothing window length (16000)]'
  type: boolean
  inputBinding:
    prefix: -end_l
- id: step
  doc: '[Multiplicative window length step (1.5)]'
  type: boolean
  inputBinding:
    prefix: -step
- id: l_bin
  doc: '[Bin size in nucleotides (5)]'
  type: boolean
  inputBinding:
    prefix: -l_bin
- id: l_mapp
  doc: '[Read length of multi-mapability profiles]'
  type: boolean
  inputBinding:
    prefix: -l_mapp
- id: mapp_thr
  doc: '[Multi-mapability signal threshold used in correction (1.2)]'
  type: boolean
  inputBinding:
    prefix: -mapp_thr
- id: l_frag
  doc: '[Fragment length (200)]'
  type: boolean
  inputBinding:
    prefix: -l_frag
- id: l_c
  doc: '[Mapability correction window length (2000)]'
  type: boolean
  inputBinding:
    prefix: -l_c
- id: l_p
  doc: '[Normalization window length for p-value computation]'
  type: boolean
  inputBinding:
    prefix: -l_p
- id: sigma
  doc: '[min(Fore/Back, Back/Fore) (.5)]'
  type: boolean
  inputBinding:
    prefix: -sigma
- id: gamma
  doc: '[Min threshold for unsmoothed/smoothed (4)]'
  type: boolean
  inputBinding:
    prefix: -gamma
- id: q_val
  doc: '[Maximum q-value for the reported ERs]'
  type: boolean
  inputBinding:
    prefix: -q_val
- id: l_win_min
  doc: '[Minimum p-val window length (100)]'
  type: boolean
  inputBinding:
    prefix: -l_win_min
- id: l_win_max
  doc: '[Maximum p-val window length (5000)]'
  type: boolean
  inputBinding:
    prefix: -l_win_max
- id: l_win_step
  doc: '[p-val window length step (250)]'
  type: boolean
  inputBinding:
    prefix: -l_win_step
outputs: []
cwlVersion: v1.1
baseCommand:
- MUSIC
