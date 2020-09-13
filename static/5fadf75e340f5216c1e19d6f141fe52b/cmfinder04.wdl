version 1.0

task Cmfinder04 {
  input {
    File? input_alignment_file
    File? output_alignment_file
    Boolean? degen_rand
    Boolean? degen_keep
    Boolean? fragmentary
    Boolean? non_frag_avg_bp_pr
    Boolean? wgs_c
    Boolean? wpb
    Boolean? ints_like_zero_three
    Int? min_seq_weight
    Boolean? no_elim_iden_seq
    Boolean? no_elim_iden_subseq
    Boolean? allow_untested_code
    Int? min_c_and_score_in_final
    Int? bg_score_size
    Int? bg_score_evalue
    Int? bg_score_scan_thresh
    Boolean? bg_score_non_frag
    Boolean? filter_non_frag
    Int? filter_non_frag_pad
    Int? max_degen_per_hit
    Int? max_degen_flanking_n_ucs
    Boolean? bad_distal_pairs_to_loop
    Boolean? bad_distal_pairs_to_loop_only
    Int? min_term_loop_n_ucs
    Int? seed
    String? evalue
    File? create_file_on_success
    Boolean? save_after_first_m_step
    Boolean? save_in_progress
    File? timer_append
    String? tail_n
    Boolean? local
    Boolean? n_off_our_f_five
    Boolean? max
    Boolean? amaa
    Int? cpu
    Boolean? p_five_six
    File? prior
    Boolean? e_ent
    Boolean? en_one
    Int? emn
    Int? evn
    Int? elf_n
    Int? eg_fn
    Boolean? summarize
    Boolean? summarize_gsc
    String? summarize_save_msa
    File input_sto_file
  }
  command <<<
    cmfinder04 \
      ~{input_sto_file} \
      ~{if defined(input_alignment_file) then ("-a " +  '"' + input_alignment_file + '"') else ""} \
      ~{if defined(output_alignment_file) then ("-o " +  '"' + output_alignment_file + '"') else ""} \
      ~{if (degen_rand) then "--degen-rand" else ""} \
      ~{if (degen_keep) then "--degen-keep" else ""} \
      ~{if (fragmentary) then "--fragmentary" else ""} \
      ~{if (non_frag_avg_bp_pr) then "--non-frag-avg-bppr" else ""} \
      ~{if (wgs_c) then "--wgsc" else ""} \
      ~{if (wpb) then "--wpb" else ""} \
      ~{if (ints_like_zero_three) then "--ints-like-03" else ""} \
      ~{if defined(min_seq_weight) then ("--min-seq-weight " +  '"' + min_seq_weight + '"') else ""} \
      ~{if (no_elim_iden_seq) then "--no-elim-iden-seq" else ""} \
      ~{if (no_elim_iden_subseq) then "--no-elim-iden-subseq" else ""} \
      ~{if (allow_untested_code) then "--allow-untested-code" else ""} \
      ~{if defined(min_c_and_score_in_final) then ("--min-cand-score-in-final " +  '"' + min_c_and_score_in_final + '"') else ""} \
      ~{if defined(bg_score_size) then ("--bg-score-size " +  '"' + bg_score_size + '"') else ""} \
      ~{if defined(bg_score_evalue) then ("--bg-score-evalue " +  '"' + bg_score_evalue + '"') else ""} \
      ~{if defined(bg_score_scan_thresh) then ("--bg-score-scan-thresh " +  '"' + bg_score_scan_thresh + '"') else ""} \
      ~{if (bg_score_non_frag) then "--bg-score-non-frag" else ""} \
      ~{if (filter_non_frag) then "--filter-non-frag" else ""} \
      ~{if defined(filter_non_frag_pad) then ("--filter-non-frag-pad " +  '"' + filter_non_frag_pad + '"') else ""} \
      ~{if defined(max_degen_per_hit) then ("--max-degen-per-hit " +  '"' + max_degen_per_hit + '"') else ""} \
      ~{if defined(max_degen_flanking_n_ucs) then ("--max-degen-flanking-nucs " +  '"' + max_degen_flanking_n_ucs + '"') else ""} \
      ~{if (bad_distal_pairs_to_loop) then "--bad-distal-pairs-to-loop" else ""} \
      ~{if (bad_distal_pairs_to_loop_only) then "--bad-distal-pairs-to-loop-only" else ""} \
      ~{if defined(min_term_loop_n_ucs) then ("--min-term-loop-nucs " +  '"' + min_term_loop_n_ucs + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""} \
      ~{if defined(create_file_on_success) then ("--create-file-on-success " +  '"' + create_file_on_success + '"') else ""} \
      ~{if (save_after_first_m_step) then "--save-after-first-M-step" else ""} \
      ~{if (save_in_progress) then "--save-in-progress" else ""} \
      ~{if defined(timer_append) then ("--timer-append " +  '"' + timer_append + '"') else ""} \
      ~{if defined(tail_n) then ("--tailn " +  '"' + tail_n + '"') else ""} \
      ~{if (local) then "--local" else ""} \
      ~{if (n_off_our_f_five) then "--noF4F5" else ""} \
      ~{if (max) then "--max" else ""} \
      ~{if (amaa) then "--amaa" else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if (p_five_six) then "--p56" else ""} \
      ~{if defined(prior) then ("--prior " +  '"' + prior + '"') else ""} \
      ~{if (e_ent) then "--eent" else ""} \
      ~{if (en_one) then "--enone" else ""} \
      ~{if defined(emn) then ("--EmN " +  '"' + emn + '"') else ""} \
      ~{if defined(evn) then ("--EvN " +  '"' + evn + '"') else ""} \
      ~{if defined(elf_n) then ("--ElfN " +  '"' + elf_n + '"') else ""} \
      ~{if defined(eg_fn) then ("--EgfN " +  '"' + eg_fn + '"') else ""} \
      ~{if (summarize) then "--summarize" else ""} \
      ~{if (summarize_gsc) then "--summarize-gsc" else ""} \
      ~{if defined(summarize_save_msa) then ("--summarize-save-msa " +  '"' + summarize_save_msa + '"') else ""}
  >>>
  parameter_meta {
    input_alignment_file: ": input alignment file (.sto)"
    output_alignment_file: ": output alignment file (.sto)"
    degen_rand: ": randomize degenerate nucs like CMfinder 0.3"
    degen_keep: ": keep degenerate nucs and marginalize  [default]"
    fragmentary: ": allow truncated hits (independent of --degen-X, unlike pscore)"
    non_frag_avg_bp_pr: ": ignore --fragmentary for calculating average base pair probs"
    wgs_c: ": use GSC alg to weight sequences for redundancy"
    wpb: ": use PB alg to weight sequences for redundancy"
    ints_like_zero_three: ": use ints for mutual info and partition func, like CMfinder 0.3 did"
    min_seq_weight: ": eliminate seqs from MSA whose TCM weight is below this value  [0.01]"
    no_elim_iden_seq: ": don't eliminate identical sequences as candidate members"
    no_elim_iden_subseq: ": don't eliminate identical sub-sequences of other sequences as candidate members"
    allow_untested_code: ": run code that was never exercized in tests; don't abort to allow testing"
    min_c_and_score_in_final: ": min cmsearch score to put a seq into the saved MSA.  [0]"
    bg_score_size: ": create this many randomized seqs for each input seq to get background score, below which candidates are rejected  [0]"
    bg_score_evalue: ": try to get an EVD from --bg-score-size, and apply this E-value  [-1]"
    bg_score_scan_thresh: ": bitscore threshold (-T in cmsearch) to use for scanning --bg-score-size data.  [0]"
    bg_score_non_frag: ": prevent --bg-score-size scans from using fragmentary modes -- force --nontrunc"
    filter_non_frag: ": first run cmsearch with --notrunc, then run normal cmsearch only on the hits from --notrunc"
    filter_non_frag_pad: ": with --filter-non-frag, add this many nucs on 5' and 3' side of the non-frag hits  [20]"
    max_degen_per_hit: ": eliminate hits with this many degen nucs or more"
    max_degen_flanking_n_ucs: ": consider this many nucs beyond the 5' and 3' ends of each hit in counting degen nucs for --max-degen-per-hit"
    bad_distal_pairs_to_loop: ": shift non-canon pairs in distal part of stems to the terminal loop"
    bad_distal_pairs_to_loop_only: ": just run the input msa (-a flag) thru --bad-distal-pairs-to-loop-test and save to output msa (-o flag)"
    min_term_loop_n_ucs: ": only with --bad-distal-pairs-to-loop, move even good base pairs into loop if there are fewer than this many nucs in term loop.  But leave it alone if bp is truncated (with --fragmentary)"
    seed: ": set random number generator's seed to <n>  [0]  (n>=0)"
    evalue: ": use this E-value in ScanCand, in addition to a threshold (note: implies running internal cmcalibrate, which will be very slow)"
    create_file_on_success: ": create this file, empty, upon successful completion of the program, for convenience elsewhere"
    save_after_first_m_step: ": for debugging.  program exits after saving the file"
    save_in_progress: ": for debugging, save MSA's as we processed"
    timer_append: ": append timing stats to tab-delimited file"
    tail_n: ": pass --gtailn or --ltailn as appropriate to cmcalibrate (default: accept cmcalibrate's default)"
    local: ": local mode, i.e. don't pass -g to internal cmsearch"
    n_off_our_f_five: ": set --noF4 and --noF5 (env def) to avoid glocal hmm"
    max: ": pass --max to cmsearch (and skip calibrations in cmbuild)"
    amaa: ": use maximal-alignment accuracy in cmsearch, i.e. don't pass --acyk"
    cpu: ": pass to internal cmsearch/cmcalibrate.  --cpu -1 means use all CPUs (default is --cpu 0, which is single-threaded)  [0]  (n>=-1)"
    p_five_six: ": use the default prior from Infernal v0.56 through v1.0.2"
    prior: ": read priors from file <f>"
    e_ent: ": adjust eff seq # to achieve relative entropy target  [default]"
    en_one: ": no effective seq # weighting: just use nseq"
    emn: ": number of sampled seqs to use for p7 local MSV calibration  [200]  (n>0)"
    evn: ": number of sampled seqs to use for p7 local Vit calibration  [200]  (n>0)"
    elf_n: ": number of sampled seqs to use for p7 local Fwd calibration  [200]  (n>0)"
    eg_fn: ": number of sampled seqs to use for p7 glocal Fwd calibration  [200]  (n>0)"
    summarize: ": perform functionality like 'summarize' program.  commandline has the .sto file"
    summarize_gsc: ": use GSC alg weighting for --summarize"
    summarize_save_msa: ": save MSA used by --summarize, for debugging modifications on loading"
    input_sto_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_alignment_file = "${in_output_alignment_file}"
  }
}