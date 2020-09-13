version 1.0

task Pindel {
  input {
    String? c
    Boolean? f_slash_fast_a
    Boolean? p_slash_pin_del_file
    Boolean? i_slash_config_file
    Boolean? oslash_output_prefix
    Boolean? p_slash_pin_del_config_file
    Boolean? c_slash_chromosome
    Boolean? h_slash_help
    Boolean? r_slash_rp
    Boolean? h_slash_min_distance_to_the_end
    Boolean? t_slash_number_of_threads
    Boolean? x_slash_max_range_index
    Boolean? w_slash_window_size
    Boolean? e_slash_sequencing_error_rate
    Boolean? e_slash_sensitivity
    Boolean? us_lash_maximum_allowed_mismatch_rate
    Boolean? n_slash_nm
    Boolean? t_slash_report_duplications
    Boolean? lslash_report_long_insertions
    Boolean? k_slash_report_breakpoints
    Boolean? s_slash_report_close_mapped_reads
    Boolean? s_slash_report_only_close_mapped_reads
    Boolean? i_slash_report_inter_chromosomal_events
    Boolean? c_slash_in_del_correction
    Boolean? n_slash_normal_samples
    Boolean? b_slash_break_dancer
    Boolean? j_slash_include
    Boolean? j_slash_exclude
    Boolean? a_slash_additional_mismatch
    Boolean? m_slash_min_perfect_match_around_bp
    Boolean? v_slash_min_inversion_size
    Boolean? d_slash_min_num_matched_bases
    Boolean? b_slash_balance_cut_off
    Boolean? a_slash_anchor_quality
    Boolean? m_slash_minimum_support_for_event
    Boolean? z_slash_input_sv_calls_for_assembly
    Boolean? g_slash_genotyping
    Boolean? q_slash_output_of_break_dancer_events
    Boolean? lslash_name_of_log_file
    Boolean? y_slash_ploidy
    Boolean? q_slash_detect_dd
    String? p
    String? f
    String realigned
    String confidence_range_b
  }
  command <<<
    pindel \
      ~{realigned} \
      ~{confidence_range_b} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if (f_slash_fast_a) then "-f/--fasta" else ""} \
      ~{if (p_slash_pin_del_file) then "-p/--pindel-file" else ""} \
      ~{if (i_slash_config_file) then "-i/--config-file" else ""} \
      ~{if (oslash_output_prefix) then "-o/--output-prefix" else ""} \
      ~{if (p_slash_pin_del_config_file) then "-P/--pindel-config-file" else ""} \
      ~{if (c_slash_chromosome) then "-c/--chromosome" else ""} \
      ~{if (h_slash_help) then "-h/--help" else ""} \
      ~{if (r_slash_rp) then "-R/--RP" else ""} \
      ~{if (h_slash_min_distance_to_the_end) then "-H/--min_distance_to_the_end" else ""} \
      ~{if (t_slash_number_of_threads) then "-T/--number_of_threads" else ""} \
      ~{if (x_slash_max_range_index) then "-x/--max_range_index" else ""} \
      ~{if (w_slash_window_size) then "-w/--window_size" else ""} \
      ~{if (e_slash_sequencing_error_rate) then "-e/--sequencing_error_rate" else ""} \
      ~{if (e_slash_sensitivity) then "-E/--sensitivity" else ""} \
      ~{if (us_lash_maximum_allowed_mismatch_rate) then "-u/--maximum_allowed_mismatch_rate" else ""} \
      ~{if (n_slash_nm) then "-n/--NM" else ""} \
      ~{if (t_slash_report_duplications) then "-t/--report_duplications" else ""} \
      ~{if (lslash_report_long_insertions) then "-l/--report_long_insertions" else ""} \
      ~{if (k_slash_report_breakpoints) then "-k/--report_breakpoints" else ""} \
      ~{if (s_slash_report_close_mapped_reads) then "-s/--report_close_mapped_reads" else ""} \
      ~{if (s_slash_report_only_close_mapped_reads) then "-S/--report_only_close_mapped_reads" else ""} \
      ~{if (i_slash_report_inter_chromosomal_events) then "-I/--report_interchromosomal_events" else ""} \
      ~{if (c_slash_in_del_correction) then "-C/--IndelCorrection" else ""} \
      ~{if (n_slash_normal_samples) then "-N/--NormalSamples" else ""} \
      ~{if (b_slash_break_dancer) then "-b/--breakdancer" else ""} \
      ~{if (j_slash_include) then "-j/--include" else ""} \
      ~{if (j_slash_exclude) then "-J/--exclude" else ""} \
      ~{if (a_slash_additional_mismatch) then "-a/--additional_mismatch" else ""} \
      ~{if (m_slash_min_perfect_match_around_bp) then "-m/--min_perfect_match_around_BP" else ""} \
      ~{if (v_slash_min_inversion_size) then "-v/--min_inversion_size" else ""} \
      ~{if (d_slash_min_num_matched_bases) then "-d/--min_num_matched_bases" else ""} \
      ~{if (b_slash_balance_cut_off) then "-B/--balance_cutoff" else ""} \
      ~{if (a_slash_anchor_quality) then "-A/--anchor_quality" else ""} \
      ~{if (m_slash_minimum_support_for_event) then "-M/--minimum_support_for_event" else ""} \
      ~{if (z_slash_input_sv_calls_for_assembly) then "-z/--input_SV_Calls_for_assembly" else ""} \
      ~{if (g_slash_genotyping) then "-g/--genotyping" else ""} \
      ~{if (q_slash_output_of_break_dancer_events) then "-Q/--output_of_breakdancer_events" else ""} \
      ~{if (lslash_name_of_log_file) then "-L/--name_of_logfile" else ""} \
      ~{if (y_slash_ploidy) then "-Y/--Ploidy" else ""} \
      ~{if (q_slash_detect_dd) then "-q/--detect_DD" else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    c: ""
    f_slash_fast_a: ""
    p_slash_pin_del_file: ""
    i_slash_config_file: ""
    oslash_output_prefix: ""
    p_slash_pin_del_config_file: ""
    c_slash_chromosome: ""
    h_slash_help: ""
    r_slash_rp: ""
    h_slash_min_distance_to_the_end: ""
    t_slash_number_of_threads: ""
    x_slash_max_range_index: ""
    w_slash_window_size: ""
    e_slash_sequencing_error_rate: ""
    e_slash_sensitivity: ""
    us_lash_maximum_allowed_mismatch_rate: ""
    n_slash_nm: ""
    t_slash_report_duplications: ""
    lslash_report_long_insertions: ""
    k_slash_report_breakpoints: ""
    s_slash_report_close_mapped_reads: ""
    s_slash_report_only_close_mapped_reads: ""
    i_slash_report_inter_chromosomal_events: ""
    c_slash_in_del_correction: ""
    n_slash_normal_samples: ""
    b_slash_break_dancer: ""
    j_slash_include: ""
    j_slash_exclude: ""
    a_slash_additional_mismatch: ""
    m_slash_min_perfect_match_around_bp: ""
    v_slash_min_inversion_size: ""
    d_slash_min_num_matched_bases: ""
    b_slash_balance_cut_off: ""
    a_slash_anchor_quality: ""
    m_slash_minimum_support_for_event: ""
    z_slash_input_sv_calls_for_assembly: ""
    g_slash_genotyping: ""
    q_slash_output_of_break_dancer_events: ""
    lslash_name_of_log_file: ""
    y_slash_ploidy: ""
    q_slash_detect_dd: ""
    p: ""
    f: ""
    realigned: "-r/--report_inversions"
    confidence_range_b: "Example: DEL chr1 10000 50 chr2 20000 100 "
  }
  output {
    File out_stdout = stdout()
  }
}