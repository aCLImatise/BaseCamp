version 1.0

task Cmbuild {
  input {
    File? name_cms_s
    Boolean? force_allow_overwriting
    File? direct_summary_output
    File? resave_consensusinsert_column
    Boolean? devhelp
    Boolean? fast
    Boolean? hand
    Float? sym_frac
    Boolean? noss
    File? r_search
    File? null
    File? prior
    Boolean? wpb
    Boolean? wgs_c
    Boolean? w_none
    Boolean? w_given
    Boolean? w_blosum
    Float? wid
    Boolean? e_ent
    Boolean? en_one
    String? ere
    String? e_set
    Int? emin_seq
    String? e_hmm_re
    Float? e_sigma
    Int? pse_venere
    Boolean? p_seven_ml
    Int? emn
    Int? evn
    Int? elf_n
    Int? eg_fn
    String? refine
    Boolean? wrefine_configure_model
    Boolean? gibbs
    Int? seed
    Boolean? cy_k
    Boolean? not_run_c
    Boolean? options
    String cm_file_out
    String msa_file
  }
  command <<<
    cmbuild \
      ~{cm_file_out} \
      ~{msa_file} \
      ~{if defined(name_cms_s) then ("-n " +  '"' + name_cms_s + '"') else ""} \
      ~{if (force_allow_overwriting) then "-F" else ""} \
      ~{if defined(direct_summary_output) then ("-o " +  '"' + direct_summary_output + '"') else ""} \
      ~{if defined(resave_consensusinsert_column) then ("-O " +  '"' + resave_consensusinsert_column + '"') else ""} \
      ~{if (devhelp) then "--devhelp" else ""} \
      ~{if (fast) then "--fast" else ""} \
      ~{if (hand) then "--hand" else ""} \
      ~{if defined(sym_frac) then ("--symfrac " +  '"' + sym_frac + '"') else ""} \
      ~{if (noss) then "--noss" else ""} \
      ~{if defined(r_search) then ("--rsearch " +  '"' + r_search + '"') else ""} \
      ~{if defined(null) then ("--null " +  '"' + null + '"') else ""} \
      ~{if defined(prior) then ("--prior " +  '"' + prior + '"') else ""} \
      ~{if (wpb) then "--wpb" else ""} \
      ~{if (wgs_c) then "--wgsc" else ""} \
      ~{if (w_none) then "--wnone" else ""} \
      ~{if (w_given) then "--wgiven" else ""} \
      ~{if (w_blosum) then "--wblosum" else ""} \
      ~{if defined(wid) then ("--wid " +  '"' + wid + '"') else ""} \
      ~{if (e_ent) then "--eent" else ""} \
      ~{if (en_one) then "--enone" else ""} \
      ~{if defined(ere) then ("--ere " +  '"' + ere + '"') else ""} \
      ~{if defined(e_set) then ("--eset " +  '"' + e_set + '"') else ""} \
      ~{if defined(emin_seq) then ("--eminseq " +  '"' + emin_seq + '"') else ""} \
      ~{if defined(e_hmm_re) then ("--ehmmre " +  '"' + e_hmm_re + '"') else ""} \
      ~{if defined(e_sigma) then ("--esigma " +  '"' + e_sigma + '"') else ""} \
      ~{if defined(pse_venere) then ("--p7ere " +  '"' + pse_venere + '"') else ""} \
      ~{if (p_seven_ml) then "--p7ml" else ""} \
      ~{if defined(emn) then ("--EmN " +  '"' + emn + '"') else ""} \
      ~{if defined(evn) then ("--EvN " +  '"' + evn + '"') else ""} \
      ~{if defined(elf_n) then ("--ElfN " +  '"' + elf_n + '"') else ""} \
      ~{if defined(eg_fn) then ("--EgfN " +  '"' + eg_fn + '"') else ""} \
      ~{if defined(refine) then ("--refine " +  '"' + refine + '"') else ""} \
      ~{if (wrefine_configure_model) then "-l" else ""} \
      ~{if (gibbs) then "--gibbs" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (cy_k) then "--cyk" else ""} \
      ~{if (not_run_c) then "--notrunc" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    name_cms_s: ": name the CM(s) <s>, (only if single aln in file)"
    force_allow_overwriting: ": force; allow overwriting of <cmfile_out>"
    direct_summary_output: ": direct summary output to file <f>, not stdout"
    resave_consensusinsert_column: ": resave consensus/insert column annotated MSA to file <f>"
    devhelp: ": show list of otherwise hidden developer/expert options"
    fast: ": assign cols w/ >= symfrac residues as consensus"
    hand: ": use reference coordinate annotation to specify consensus"
    sym_frac: ": fraction of non-gaps to require in a consensus column [0..1]"
    noss: ": ignore secondary structure annotation in input alignment"
    r_search: ": use RSEARCH parameterization with RIBOSUM matrix file <f>"
    null: ": read null (random sequence) model from file <f>"
    prior: ": read priors from file <f>"
    wpb: ": Henikoff position-based weights  [default]"
    wgs_c: ": Gerstein/Sonnhammer/Chothia tree weights"
    w_none: ": don't do any relative weighting; set all to 1"
    w_given: ": use weights as given in MSA file"
    w_blosum: ": Henikoff simple filter weights"
    wid: ": for --wblosum: set identity cutoff  [0.62]  (0<=x<=1)"
    e_ent: ": adjust eff seq # to achieve relative entropy target  [default]"
    en_one: ": no effective seq # weighting: just use nseq"
    ere: ": for --eent: set CM target relative entropy to <x>"
    e_set: ": set eff seq # for all models to <x>"
    emin_seq: ": for --eent: set minimum effective sequence number to <x>  [0.1]"
    e_hmm_re: ": for --eent: set minimum HMM relative entropy to <x>"
    e_sigma: ": for --eent: set sigma param to <x>  [45.0]"
    pse_venere: ": for the filter p7 HMM, set minimum rel entropy/posn to <x>"
    p_seven_ml: ": define the filter p7 HMM as the ML p7 HMM"
    emn: ": number of sampled seqs to use for p7 local MSV calibration  [200]"
    evn: ": number of sampled seqs to use for p7 local Vit calibration  [200]"
    elf_n: ": number of sampled seqs to use for p7 local Fwd calibration  [200]"
    eg_fn: ": number of sampled seqs to use for p7 glocal Fwd calibration  [200]"
    refine: ": refine input aln w/Expectation-Maximization, save to <f>"
    wrefine_configure_model: ": w/--refine, configure model for local alignment [default: global]"
    gibbs: ": w/--refine, use Gibbs sampling instead of EM"
    seed: ": w/--gibbs, set RNG seed to <n> (if 0: one-time arbitrary seed)"
    cy_k: ": w/--refine, use CYK instead of optimal accuracy"
    not_run_c: ": w/--refine, do not use truncated alignment algorithm"
    options: ""
    cm_file_out: ""
    msa_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_direct_summary_output = "${in_direct_summary_output}"
  }
}