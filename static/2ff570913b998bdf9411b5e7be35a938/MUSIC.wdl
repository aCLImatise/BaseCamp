version 1.0

task MUSIC {
  input {
    Boolean? preprocess
    Directory? sort_reads
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
      ~{if (preprocess) then "-preprocess" else ""} \
      ~{if (sort_reads) then "-sort_reads" else ""} \
      ~{if (remove_duplicates) then "-remove_duplicates" else ""} \
      ~{if (get_multiscale_broad_ers) then "-get_multiscale_broad_ERs" else ""} \
      ~{if (get_multiscale_punctate_ers) then "-get_multiscale_punctate_ERs" else ""} \
      ~{if (get_tf_peaks) then "-get_TF_peaks" else ""} \
      ~{if (write_ms_decomposition) then "-write_MS_decomposition" else ""} \
      ~{if (write_log_r_signal) then "-write_logR_signal" else ""} \
      ~{if (get_per_win_p_vals_vs_fc) then "-get_per_win_p_vals_vs_FC" else ""} \
      ~{if (get_scale_spectrum) then "-get_scale_spectrum" else ""} \
      ~{if (get_multiscale_music) then "-get_multiscale_music" else ""} \
      ~{if (chip) then "-chip" else ""} \
      ~{if (control) then "-control" else ""} \
      ~{if (mapp) then "-mapp" else ""} \
      ~{if (begin_l) then "-begin_l" else ""} \
      ~{if (end_l) then "-end_l" else ""} \
      ~{if (step) then "-step" else ""} \
      ~{if (l_bin) then "-l_bin" else ""} \
      ~{if (l_mapp) then "-l_mapp" else ""} \
      ~{if (mapp_thr) then "-mapp_thr" else ""} \
      ~{if (l_frag) then "-l_frag" else ""} \
      ~{if (l_c) then "-l_c" else ""} \
      ~{if (l_p) then "-l_p" else ""} \
      ~{if (sigma) then "-sigma" else ""} \
      ~{if (gamma) then "-gamma" else ""} \
      ~{if (q_val) then "-q_val" else ""} \
      ~{if (l_win_min) then "-l_win_min" else ""} \
      ~{if (l_win_max) then "-l_win_max" else ""} \
      ~{if (l_win_step) then "-l_win_step" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    preprocess: "[File format (\\\"SAM\\\"/\\\"ELAND\\\"/\\\"bowtie\\\"/\\\"tagAlign\\\"/\\\"BED5\\\"/\\\"BED6\\\")] [Mapped reads file path (\\\"stdin\\\" for piped input)] [Output directory]"
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
  output {
    File out_stdout = stdout()
    Directory out_sort_reads = "${in_sort_reads}"
  }
}