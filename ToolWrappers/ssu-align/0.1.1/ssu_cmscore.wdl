version 1.0

task Ssucmscore {
  input {
    Int? generate_n_sequences
    Boolean? align_locally_wrt
    Int? set_rng_seed
    Boolean? print_individual_timings
    Boolean? sub
    Int? mx_size
    Boolean? devhelp
    Boolean? emit
    Boolean? random
    File? in_file
    File? outfile
    Int? lm_in
    Int? lmax
    Boolean? pad
    Boolean? h_banded
    Float? tau
    Boolean? aln_two_bands
    Boolean? h_safe
    Boolean? non_banded
    Boolean? score_only
    Boolean? viterbi
    Boolean? search
    Boolean? inside
    Boolean? forward
    Int? taus
    Int? tau_e
    File? t_file
    Boolean? options
    String cm_file
  }
  command <<<
    ssu_cmscore \
      ~{cm_file} \
      ~{if defined(generate_n_sequences) then ("-n " +  '"' + generate_n_sequences + '"') else ""} \
      ~{if (align_locally_wrt) then "-l" else ""} \
      ~{if defined(set_rng_seed) then ("-s " +  '"' + set_rng_seed + '"') else ""} \
      ~{if (print_individual_timings) then "-a" else ""} \
      ~{if (sub) then "--sub" else ""} \
      ~{if defined(mx_size) then ("--mxsize " +  '"' + mx_size + '"') else ""} \
      ~{if (devhelp) then "--devhelp" else ""} \
      ~{if (emit) then "--emit" else ""} \
      ~{if (random) then "--random" else ""} \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(lm_in) then ("--Lmin " +  '"' + lm_in + '"') else ""} \
      ~{if defined(lmax) then ("--Lmax " +  '"' + lmax + '"') else ""} \
      ~{if (pad) then "--pad" else ""} \
      ~{if (h_banded) then "--hbanded" else ""} \
      ~{if defined(tau) then ("--tau " +  '"' + tau + '"') else ""} \
      ~{if (aln_two_bands) then "--aln2bands" else ""} \
      ~{if (h_safe) then "--hsafe" else ""} \
      ~{if (non_banded) then "--nonbanded" else ""} \
      ~{if (score_only) then "--scoreonly" else ""} \
      ~{if (viterbi) then "--viterbi" else ""} \
      ~{if (search) then "--search" else ""} \
      ~{if (inside) then "--inside" else ""} \
      ~{if (forward) then "--forward" else ""} \
      ~{if defined(taus) then ("--taus " +  '"' + taus + '"') else ""} \
      ~{if defined(tau_e) then ("--taue " +  '"' + tau_e + '"') else ""} \
      ~{if defined(t_file) then ("--tfile " +  '"' + t_file + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    generate_n_sequences: ": generate <n> sequences  [10]"
    align_locally_wrt: ": align locally w.r.t. the model"
    set_rng_seed: ": set RNG seed to <n> (if 0: one-time arbitrary seed)  [181]"
    print_individual_timings: ": print individual timings & scores, not just a summary"
    sub: ": build sub CM for columns b/t HMM predicted start/end points"
    mx_size: ": set maximum allowable DP matrix size to <x> Mb  [2048.0]"
    devhelp: ": show list of undocumented developer options"
    emit: ": emit <n> sequences from each CM  [default]"
    random: ": emit <n> random seq from cm->null model"
    in_file: ": read sequences to align from file <s>"
    outfile: ": save seqs to file <s> in FASTA format"
    lm_in: ": with --random, specify minimum length of random sequences as <n>"
    lmax: ": with --random, specify maximum length of random sequences as <n>"
    pad: ": with --emit, pad (W-L) residues on each side of emitted seqs"
    h_banded: ": compare d&c optimal CYK versus HMM banded CYK  [default]"
    tau: ": set tail loss prob for --hbanded to <x>  [1E-7]  (0<x<1)"
    aln_two_bands: ": w/--hbanded derive HMM bands w/o scanning Forward/Backward"
    h_safe: ": realign (non-banded) seqs with HMM banded CYK score < 0 bits"
    non_banded: ": compare divide and conquer (d&c) versus standard non-banded CYK"
    score_only: ": with --nonbanded, do only score, save memory"
    viterbi: ": align to a CM Plan 9 HMM with the Viterbi algorithm"
    search: ": run algorithms in scanning search mode"
    inside: ": with --search, use Inside instead of CYK"
    forward: ": with --search, use HMM  Forward instead of CYK"
    taus: ": set initial (stage 2) tail loss prob to 1E-<x> for HMM banding"
    tau_e: ": set final   (stage N) tail loss prob to 1E-<x> for HMM banding"
    t_file: ": dump parsetrees to file <f>"
    options: ""
    cm_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}