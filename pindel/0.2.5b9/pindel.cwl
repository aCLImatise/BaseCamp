class: CommandLineTool
id: ../../../pindel.cwl
inputs:
- id: in_c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: in_f_slash_fast_a
  doc: ''
  type: boolean
  inputBinding:
    prefix: -f/--fasta
- id: in_p_slash_pin_del_file
  doc: ''
  type: boolean
  inputBinding:
    prefix: -p/--pindel-file
- id: in_i_slash_config_file
  doc: ''
  type: boolean
  inputBinding:
    prefix: -i/--config-file
- id: in_oslash_output_prefix
  doc: ''
  type: boolean
  inputBinding:
    prefix: -o/--output-prefix
- id: in_p_slash_pin_del_config_file
  doc: ''
  type: boolean
  inputBinding:
    prefix: -P/--pindel-config-file
- id: in_c_slash_chromosome
  doc: ''
  type: boolean
  inputBinding:
    prefix: -c/--chromosome
- id: in_h_slash_help
  doc: ''
  type: boolean
  inputBinding:
    prefix: -h/--help
- id: in_r_slash_rp
  doc: ''
  type: boolean
  inputBinding:
    prefix: -R/--RP
- id: in_h_slash_min_distance_to_the_end
  doc: ''
  type: boolean
  inputBinding:
    prefix: -H/--min_distance_to_the_end
- id: in_t_slash_number_of_threads
  doc: ''
  type: boolean
  inputBinding:
    prefix: -T/--number_of_threads
- id: in_x_slash_max_range_index
  doc: ''
  type: boolean
  inputBinding:
    prefix: -x/--max_range_index
- id: in_w_slash_window_size
  doc: ''
  type: boolean
  inputBinding:
    prefix: -w/--window_size
- id: in_e_slash_sequencing_error_rate
  doc: ''
  type: boolean
  inputBinding:
    prefix: -e/--sequencing_error_rate
- id: in_e_slash_sensitivity
  doc: ''
  type: boolean
  inputBinding:
    prefix: -E/--sensitivity
- id: in_us_lash_maximum_allowed_mismatch_rate
  doc: ''
  type: boolean
  inputBinding:
    prefix: -u/--maximum_allowed_mismatch_rate
- id: in_n_slash_nm
  doc: ''
  type: boolean
  inputBinding:
    prefix: -n/--NM
- id: in_t_slash_report_duplications
  doc: ''
  type: boolean
  inputBinding:
    prefix: -t/--report_duplications
- id: in_lslash_report_long_insertions
  doc: ''
  type: boolean
  inputBinding:
    prefix: -l/--report_long_insertions
- id: in_k_slash_report_breakpoints
  doc: ''
  type: boolean
  inputBinding:
    prefix: -k/--report_breakpoints
- id: in_s_slash_report_close_mapped_reads
  doc: ''
  type: boolean
  inputBinding:
    prefix: -s/--report_close_mapped_reads
- id: in_s_slash_report_only_close_mapped_reads
  doc: ''
  type: boolean
  inputBinding:
    prefix: -S/--report_only_close_mapped_reads
- id: in_i_slash_report_inter_chromosomal_events
  doc: ''
  type: boolean
  inputBinding:
    prefix: -I/--report_interchromosomal_events
- id: in_c_slash_in_del_correction
  doc: ''
  type: boolean
  inputBinding:
    prefix: -C/--IndelCorrection
- id: in_n_slash_normal_samples
  doc: ''
  type: boolean
  inputBinding:
    prefix: -N/--NormalSamples
- id: in_b_slash_break_dancer
  doc: ''
  type: boolean
  inputBinding:
    prefix: -b/--breakdancer
- id: in_j_slash_include
  doc: ''
  type: boolean
  inputBinding:
    prefix: -j/--include
- id: in_j_slash_exclude
  doc: ''
  type: boolean
  inputBinding:
    prefix: -J/--exclude
- id: in_a_slash_additional_mismatch
  doc: ''
  type: boolean
  inputBinding:
    prefix: -a/--additional_mismatch
- id: in_m_slash_min_perfect_match_around_bp
  doc: ''
  type: boolean
  inputBinding:
    prefix: -m/--min_perfect_match_around_BP
- id: in_v_slash_min_inversion_size
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v/--min_inversion_size
- id: in_d_slash_min_num_matched_bases
  doc: ''
  type: boolean
  inputBinding:
    prefix: -d/--min_num_matched_bases
- id: in_b_slash_balance_cut_off
  doc: ''
  type: boolean
  inputBinding:
    prefix: -B/--balance_cutoff
- id: in_a_slash_anchor_quality
  doc: ''
  type: boolean
  inputBinding:
    prefix: -A/--anchor_quality
- id: in_m_slash_minimum_support_for_event
  doc: ''
  type: boolean
  inputBinding:
    prefix: -M/--minimum_support_for_event
- id: in_z_slash_input_sv_calls_for_assembly
  doc: ''
  type: boolean
  inputBinding:
    prefix: -z/--input_SV_Calls_for_assembly
- id: in_g_slash_genotyping
  doc: ''
  type: boolean
  inputBinding:
    prefix: -g/--genotyping
- id: in_q_slash_output_of_break_dancer_events
  doc: ''
  type: boolean
  inputBinding:
    prefix: -Q/--output_of_breakdancer_events
- id: in_lslash_name_of_log_file
  doc: ''
  type: boolean
  inputBinding:
    prefix: -L/--name_of_logfile
- id: in_y_slash_ploidy
  doc: ''
  type: boolean
  inputBinding:
    prefix: -Y/--Ploidy
- id: in_q_slash_detect_dd
  doc: ''
  type: boolean
  inputBinding:
    prefix: -q/--detect_DD
- id: in_p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: in_f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: in_realigned
  doc: -r/--report_inversions
  type: string
  inputBinding:
    position: 0
- id: in_confidence_range_b
  doc: 'Example: DEL chr1 10000 50 chr2 20000 100 '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pindel
