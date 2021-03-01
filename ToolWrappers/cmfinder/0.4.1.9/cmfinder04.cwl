class: CommandLineTool
id: cmfinder04.cwl
inputs:
- id: in_input_alignment_file
  doc: ': input alignment file (.sto)'
  type: File?
  inputBinding:
    prefix: -a
- id: in_output_alignment_file
  doc: ': output alignment file (.sto)'
  type: File?
  inputBinding:
    prefix: -o
- id: in_degen_rand
  doc: ': randomize degenerate nucs like CMfinder 0.3'
  type: boolean?
  inputBinding:
    prefix: --degen-rand
- id: in_degen_keep
  doc: ': keep degenerate nucs and marginalize  [default]'
  type: boolean?
  inputBinding:
    prefix: --degen-keep
- id: in_fragmentary
  doc: ': allow truncated hits (independent of --degen-X, unlike pscore)'
  type: boolean?
  inputBinding:
    prefix: --fragmentary
- id: in_non_frag_avg_bp_pr
  doc: ': ignore --fragmentary for calculating average base pair probs'
  type: boolean?
  inputBinding:
    prefix: --non-frag-avg-bppr
- id: in_wgs_c
  doc: ': use GSC alg to weight sequences for redundancy'
  type: boolean?
  inputBinding:
    prefix: --wgsc
- id: in_wpb
  doc: ': use PB alg to weight sequences for redundancy'
  type: boolean?
  inputBinding:
    prefix: --wpb
- id: in_ints_like_zero_three
  doc: ': use ints for mutual info and partition func, like CMfinder 0.3 did'
  type: boolean?
  inputBinding:
    prefix: --ints-like-03
- id: in_min_seq_weight
  doc: ': eliminate seqs from MSA whose TCM weight is below this value  [0.01]'
  type: long?
  inputBinding:
    prefix: --min-seq-weight
- id: in_no_elim_iden_seq
  doc: ": don't eliminate identical sequences as candidate members"
  type: boolean?
  inputBinding:
    prefix: --no-elim-iden-seq
- id: in_no_elim_iden_subseq
  doc: ": don't eliminate identical sub-sequences of other sequences as candidate\
    \ members"
  type: boolean?
  inputBinding:
    prefix: --no-elim-iden-subseq
- id: in_allow_untested_code
  doc: ": run code that was never exercized in tests; don't abort to allow testing"
  type: boolean?
  inputBinding:
    prefix: --allow-untested-code
- id: in_min_c_and_score_in_final
  doc: ': min cmsearch score to put a seq into the saved MSA.  [0]'
  type: long?
  inputBinding:
    prefix: --min-cand-score-in-final
- id: in_bg_score_size
  doc: ': create this many randomized seqs for each input seq to get background score,
    below which candidates are rejected  [0]'
  type: long?
  inputBinding:
    prefix: --bg-score-size
- id: in_bg_score_evalue
  doc: ': try to get an EVD from --bg-score-size, and apply this E-value  [-1]'
  type: long?
  inputBinding:
    prefix: --bg-score-evalue
- id: in_bg_score_scan_thresh
  doc: ': bitscore threshold (-T in cmsearch) to use for scanning --bg-score-size
    data.  [0]'
  type: long?
  inputBinding:
    prefix: --bg-score-scan-thresh
- id: in_bg_score_non_frag
  doc: ': prevent --bg-score-size scans from using fragmentary modes -- force --nontrunc'
  type: boolean?
  inputBinding:
    prefix: --bg-score-non-frag
- id: in_filter_non_frag
  doc: ': first run cmsearch with --notrunc, then run normal cmsearch only on the
    hits from --notrunc'
  type: boolean?
  inputBinding:
    prefix: --filter-non-frag
- id: in_filter_non_frag_pad
  doc: ": with --filter-non-frag, add this many nucs on 5' and 3' side of the non-frag\
    \ hits  [20]"
  type: long?
  inputBinding:
    prefix: --filter-non-frag-pad
- id: in_max_degen_per_hit
  doc: ': eliminate hits with this many degen nucs or more'
  type: long?
  inputBinding:
    prefix: --max-degen-per-hit
- id: in_max_degen_flanking_n_ucs
  doc: ": consider this many nucs beyond the 5' and 3' ends of each hit in counting\
    \ degen nucs for --max-degen-per-hit"
  type: long?
  inputBinding:
    prefix: --max-degen-flanking-nucs
- id: in_bad_distal_pairs_to_loop
  doc: ': shift non-canon pairs in distal part of stems to the terminal loop'
  type: boolean?
  inputBinding:
    prefix: --bad-distal-pairs-to-loop
- id: in_bad_distal_pairs_to_loop_only
  doc: ': just run the input msa (-a flag) thru --bad-distal-pairs-to-loop-test and
    save to output msa (-o flag)'
  type: boolean?
  inputBinding:
    prefix: --bad-distal-pairs-to-loop-only
- id: in_min_term_loop_n_ucs
  doc: ': only with --bad-distal-pairs-to-loop, move even good base pairs into loop
    if there are fewer than this many nucs in term loop.  But leave it alone if bp
    is truncated (with --fragmentary)'
  type: long?
  inputBinding:
    prefix: --min-term-loop-nucs
- id: in_seed
  doc: ": set random number generator's seed to <n>  [0]  (n>=0)"
  type: long?
  inputBinding:
    prefix: --seed
- id: in_evalue
  doc: ': use this E-value in ScanCand, in addition to a threshold (note: implies
    running internal cmcalibrate, which will be very slow)'
  type: string?
  inputBinding:
    prefix: --evalue
- id: in_create_file_on_success
  doc: ': create this file, empty, upon successful completion of the program, for
    convenience elsewhere'
  type: File?
  inputBinding:
    prefix: --create-file-on-success
- id: in_save_after_first_m_step
  doc: ': for debugging.  program exits after saving the file'
  type: boolean?
  inputBinding:
    prefix: --save-after-first-M-step
- id: in_save_in_progress
  doc: ": for debugging, save MSA's as we processed"
  type: boolean?
  inputBinding:
    prefix: --save-in-progress
- id: in_timer_append
  doc: ': append timing stats to tab-delimited file'
  type: File?
  inputBinding:
    prefix: --timer-append
- id: in_tail_n
  doc: ": pass --gtailn or --ltailn as appropriate to cmcalibrate (default: accept\
    \ cmcalibrate's default)"
  type: string?
  inputBinding:
    prefix: --tailn
- id: in_local
  doc: ": local mode, i.e. don't pass -g to internal cmsearch"
  type: boolean?
  inputBinding:
    prefix: --local
- id: in_n_off_our_f_five
  doc: ': set --noF4 and --noF5 (env def) to avoid glocal hmm'
  type: boolean?
  inputBinding:
    prefix: --noF4F5
- id: in_max
  doc: ': pass --max to cmsearch (and skip calibrations in cmbuild)'
  type: boolean?
  inputBinding:
    prefix: --max
- id: in_amaa
  doc: ": use maximal-alignment accuracy in cmsearch, i.e. don't pass --acyk"
  type: boolean?
  inputBinding:
    prefix: --amaa
- id: in_cpu
  doc: ': pass to internal cmsearch/cmcalibrate.  --cpu -1 means use all CPUs (default
    is --cpu 0, which is single-threaded)  [0]  (n>=-1)'
  type: long?
  inputBinding:
    prefix: --cpu
- id: in_p_five_six
  doc: ': use the default prior from Infernal v0.56 through v1.0.2'
  type: boolean?
  inputBinding:
    prefix: --p56
- id: in_prior
  doc: ': read priors from file <f>'
  type: File?
  inputBinding:
    prefix: --prior
- id: in_e_ent
  doc: ': adjust eff seq # to achieve relative entropy target  [default]'
  type: boolean?
  inputBinding:
    prefix: --eent
- id: in_en_one
  doc: ': no effective seq # weighting: just use nseq'
  type: boolean?
  inputBinding:
    prefix: --enone
- id: in_emn
  doc: ': number of sampled seqs to use for p7 local MSV calibration  [200]  (n>0)'
  type: long?
  inputBinding:
    prefix: --EmN
- id: in_evn
  doc: ': number of sampled seqs to use for p7 local Vit calibration  [200]  (n>0)'
  type: long?
  inputBinding:
    prefix: --EvN
- id: in_elf_n
  doc: ': number of sampled seqs to use for p7 local Fwd calibration  [200]  (n>0)'
  type: long?
  inputBinding:
    prefix: --ElfN
- id: in_eg_fn
  doc: ': number of sampled seqs to use for p7 glocal Fwd calibration  [200]  (n>0)'
  type: long?
  inputBinding:
    prefix: --EgfN
- id: in_summarize
  doc: ": perform functionality like 'summarize' program.  commandline has the .sto\
    \ file"
  type: boolean?
  inputBinding:
    prefix: --summarize
- id: in_summarize_gsc
  doc: ': use GSC alg weighting for --summarize'
  type: boolean?
  inputBinding:
    prefix: --summarize-gsc
- id: in_summarize_save_msa
  doc: ': save MSA used by --summarize, for debugging modifications on loading'
  type: string?
  inputBinding:
    prefix: --summarize-save-msa
- id: in_input_sto_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_alignment_file
  doc: ': output alignment file (.sto)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_alignment_file)
hints: []
cwlVersion: v1.1
baseCommand:
- cmfinder04
