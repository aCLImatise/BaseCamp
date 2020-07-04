version 1.0

task MUSIC {
  input {
    Boolean? preprocess
    Boolean? sort_reads
    Boolean? remove_duplicates
    Boolean? get_multiscale_broad_ers
    Boolean? get_multiscale_punctate_ers
    Boolean? get_tf_peaks
    Boolean? write_ms_decomposition
    Boolean? write_log_r_signal
    Boolean? get_per_win_p_vals_vs_fc
    Boolean? get_scale_spectrum
    Boolean? get_multiscale_music
    Boolean? chip
    Boolean? control
    Boolean? mapp
    Boolean? begin_l
    Boolean? end_l
    Boolean? step
    Boolean? l_bin
    Boolean? l_mapp
    Boolean? mapp_thr
    Boolean? l_frag
    Boolean? l_c
    Boolean? l_p
    Boolean? sigma
    Boolean? gamma
    Boolean? q_val
    Boolean? l_win_min
    Boolean? l_win_max
    Boolean? l_win_step
    String? arguments
  }
  command <<<
    MUSIC \
      ~{arguments} \
      ~{true="-preprocess" false="" preprocess} \
      ~{true="-sort_reads" false="" sort_reads} \
      ~{true="-remove_duplicates" false="" remove_duplicates} \
      ~{true="-get_multiscale_broad_ERs" false="" get_multiscale_broad_ers} \
      ~{true="-get_multiscale_punctate_ERs" false="" get_multiscale_punctate_ers} \
      ~{true="-get_TF_peaks" false="" get_tf_peaks} \
      ~{true="-write_MS_decomposition" false="" write_ms_decomposition} \
      ~{true="-write_logR_signal" false="" write_log_r_signal} \
      ~{true="-get_per_win_p_vals_vs_FC" false="" get_per_win_p_vals_vs_fc} \
      ~{true="-get_scale_spectrum" false="" get_scale_spectrum} \
      ~{true="-get_multiscale_music" false="" get_multiscale_music} \
      ~{true="-chip" false="" chip} \
      ~{true="-control" false="" control} \
      ~{true="-mapp" false="" mapp} \
      ~{true="-begin_l" false="" begin_l} \
      ~{true="-end_l" false="" end_l} \
      ~{true="-step" false="" step} \
      ~{true="-l_bin" false="" l_bin} \
      ~{true="-l_mapp" false="" l_mapp} \
      ~{true="-mapp_thr" false="" mapp_thr} \
      ~{true="-l_frag" false="" l_frag} \
      ~{true="-l_c" false="" l_c} \
      ~{true="-l_p" false="" l_p} \
      ~{true="-sigma" false="" sigma} \
      ~{true="-gamma" false="" gamma} \
      ~{true="-q_val" false="" q_val} \
      ~{true="-l_win_min" false="" l_win_min} \
      ~{true="-l_win_max" false="" l_win_max} \
      ~{true="-l_win_step" false="" l_win_step}
  >>>
  parameter_meta {
    preprocess: "[File format (\"SAM\"/\"ELAND\"/\"bowtie\"/\"tagAlign\"/\"BED5\"/\"BED6\")] [Mapped reads file path (\"stdin\" for piped input)] [Output directory]"
    sort_reads: "[Reads directory] [Output directory]"
    remove_duplicates: "[Sorted reads directory] [Max # of duplicates per position] [Output directory]"
    get_multiscale_broad_ers: "[Options/Values]"
    get_multiscale_punctate_ers: "[Options/Values]"
    get_tf_peaks: "[Options/Values]"
    write_ms_decomposition: "[Options/Values]"
    write_log_r_signal: "[Options/Values]"
    get_per_win_p_vals_vs_fc: "[Options/Values]"
    get_scale_spectrum: "[Options/Values]"
    get_multiscale_music: "[Options/Values]"
    chip: "[ChIP reads directory]"
    control: "[control reads directory]"
    mapp: "[multi-mapability profiles directory]"
    begin_l: "[First scale smoothing window length (1000)]"
    end_l: "[Last scale smoothing window length (16000)]"
    step: "[Multiplicative window length step (1.5)]"
    l_bin: "[Bin size in nucleotides (5)]"
    l_mapp: "[Read length of multi-mapability profiles]"
    mapp_thr: "[Multi-mapability signal threshold used in correction (1.2)]"
    l_frag: "[Fragment length (200)]"
    l_c: "[Mapability correction window length (2000)]"
    l_p: "[Normalization window length for p-value computation]"
    sigma: "[min(Fore/Back, Back/Fore) (.5)]"
    gamma: "[Min threshold for unsmoothed/smoothed (4)]"
    q_val: "[Maximum q-value for the reported ERs]"
    l_win_min: "[Minimum p-val window length (100)]"
    l_win_max: "[Maximum p-val window length (5000)]"
    l_win_step: "[p-val window length step (250)]"
    arguments: ""
  }
}