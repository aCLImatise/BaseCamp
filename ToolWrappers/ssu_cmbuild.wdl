version 1.0

task Ssucmbuild {
  input {
    File? name_cms_s
    Boolean? append_cm_cmfile
    Boolean? force_allow_overwriting
    Boolean? _verbose_output
    Boolean? i_ins
    Int? w_beta
    Boolean? devhelp
    File? r_search
    Boolean? binary
    Boolean? rf
    Float? gap_thresh
    Boolean? ignorant
    Boolean? wgs_c
    Boolean? w_blosum
    Boolean? wpb
    Boolean? w_none
    Boolean? w_given
    Int? pb_switch
    Float? wid
    Boolean? e_ent
    Boolean? en_one
    Int? ere
    Int? e_hmm_re
    File? null
    File? prior
    String? c_target
    Int? cmax_id
    Boolean? build_separate_cm
    Boolean? c_orig
    File? c_dump
    String? refine
    Boolean? gibbs
    Int? wgibbs_set_seed
    Boolean? wrefine_align_locally
    Boolean? print_individual_sequence
    Boolean? cy_k
    Boolean? sub
    Boolean? non_banded
    String? tau
    Boolean? fins
    Int? mx_size
    String? r_dump
    Boolean? i_leaved
    Boolean? options
    String cm_file_output
    File alignment_file
  }
  command <<<
    ssu_cmbuild \
      ~{cm_file_output} \
      ~{alignment_file} \
      ~{if defined(name_cms_s) then ("-n " +  '"' + name_cms_s + '"') else ""} \
      ~{if (append_cm_cmfile) then "-A" else ""} \
      ~{if (force_allow_overwriting) then "-F" else ""} \
      ~{if (_verbose_output) then "-v" else ""} \
      ~{if (i_ins) then "--iins" else ""} \
      ~{if defined(w_beta) then ("--Wbeta " +  '"' + w_beta + '"') else ""} \
      ~{if (devhelp) then "--devhelp" else ""} \
      ~{if defined(r_search) then ("--rsearch " +  '"' + r_search + '"') else ""} \
      ~{if (binary) then "--binary" else ""} \
      ~{if (rf) then "--rf" else ""} \
      ~{if defined(gap_thresh) then ("--gapthresh " +  '"' + gap_thresh + '"') else ""} \
      ~{if (ignorant) then "--ignorant" else ""} \
      ~{if (wgs_c) then "--wgsc" else ""} \
      ~{if (w_blosum) then "--wblosum" else ""} \
      ~{if (wpb) then "--wpb" else ""} \
      ~{if (w_none) then "--wnone" else ""} \
      ~{if (w_given) then "--wgiven" else ""} \
      ~{if defined(pb_switch) then ("--pbswitch " +  '"' + pb_switch + '"') else ""} \
      ~{if defined(wid) then ("--wid " +  '"' + wid + '"') else ""} \
      ~{if (e_ent) then "--eent" else ""} \
      ~{if (en_one) then "--enone" else ""} \
      ~{if defined(ere) then ("--ere " +  '"' + ere + '"') else ""} \
      ~{if defined(e_hmm_re) then ("--ehmmre " +  '"' + e_hmm_re + '"') else ""} \
      ~{if defined(null) then ("--null " +  '"' + null + '"') else ""} \
      ~{if defined(prior) then ("--prior " +  '"' + prior + '"') else ""} \
      ~{if defined(c_target) then ("--ctarget " +  '"' + c_target + '"') else ""} \
      ~{if defined(cmax_id) then ("--cmaxid " +  '"' + cmax_id + '"') else ""} \
      ~{if (build_separate_cm) then "--call" else ""} \
      ~{if (c_orig) then "--corig" else ""} \
      ~{if defined(c_dump) then ("--cdump " +  '"' + c_dump + '"') else ""} \
      ~{if defined(refine) then ("--refine " +  '"' + refine + '"') else ""} \
      ~{if (gibbs) then "--gibbs" else ""} \
      ~{if defined(wgibbs_set_seed) then ("-s " +  '"' + wgibbs_set_seed + '"') else ""} \
      ~{if (wrefine_align_locally) then "-l" else ""} \
      ~{if (print_individual_sequence) then "-a" else ""} \
      ~{if (cy_k) then "--cyk" else ""} \
      ~{if (sub) then "--sub" else ""} \
      ~{if (non_banded) then "--nonbanded" else ""} \
      ~{if defined(tau) then ("--tau " +  '"' + tau + '"') else ""} \
      ~{if (fins) then "--fins" else ""} \
      ~{if defined(mx_size) then ("--mxsize " +  '"' + mx_size + '"') else ""} \
      ~{if defined(r_dump) then ("--rdump " +  '"' + r_dump + '"') else ""} \
      ~{if (i_leaved) then "--ileaved" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    name_cms_s: ": name the CM(s) <s>, (only if single aln in file)"
    append_cm_cmfile: ": append this CM to <cmfile>"
    force_allow_overwriting: ": force; allow overwriting of <cmfile>"
    _verbose_output: ": be verbose with output"
    i_ins: ": allow informative insert emissions, do not zero them"
    w_beta: ": set tail loss prob for calc'ing W (max size of a hit) to <x>"
    devhelp: ": show list of undocumented developer options"
    r_search: ": use RSEARCH parameterization with RIBOSUM matrix file <s>"
    binary: ": save the model(s) in binary format"
    rf: ": use reference coordinate annotation to specify consensus"
    gap_thresh: ": fraction of gaps to allow in a consensus column [0..1]  [0.5]"
    ignorant: ": strip the structural info from input alignment"
    wgs_c: ": Gerstein/Sonnhammer/Chothia tree weights  [default]"
    w_blosum: ": Henikoff simple filter weights"
    wpb: ": Henikoff position-based weights"
    w_none: ": don't do any relative weighting; set all to 1"
    w_given: ": use weights as given in MSA file"
    pb_switch: ": set failover to efficient PB wgts at > <n> seqs  [5000]  (n>0)"
    wid: ": for --wblosum: set identity cutoff  [0.62]  (0<=x<=1)"
    e_ent: ": adjust eff seq # to achieve relative entropy target  [default]"
    en_one: ": no effective seq # weighting: just use nseq"
    ere: ": for --eent: set CM target relative entropy to <x>  (x>0)"
    e_hmm_re: ": for --eent: set minimum HMM relative entropy to <x>  (x>0)"
    null: ": read null (random sequence) model from file <s>"
    prior: ": read priors from file <s>"
    c_target: ": build (at most) <n> CMs by partitioning MSA into <n> clusters"
    cmax_id: ": max fractional id b/t 2 clusters is <x>, each cluster -> CM"
    build_separate_cm: ": build a separate CM from every seq in MSA"
    c_orig: ": build an additional CM from the original, full MSA"
    c_dump: ": dump the MSA for each cluster (CM) to file <s>"
    refine: ": refine input aln w/Expectation-Maximization, save to <s>"
    gibbs: ": w/--refine, use Gibbs sampling instead of EM"
    wgibbs_set_seed: ": w/--gibbs, set RNG seed to <n> (if 0: one-time arbitrary seed)"
    wrefine_align_locally: ": w/--refine, align locally w.r.t the model"
    print_individual_sequence: ": print individual sequence scores during MSA refinement"
    cy_k: ": w/--refine align w/the CYK algorithm, not optimal accuracy"
    sub: ": w/--refine, use sub CM for columns b/t HMM start/end points"
    non_banded: ": do not use bands to accelerate alignment with --refine"
    tau: ": set tail loss prob for --hbanded to <x>"
    fins: ": w/--refine, flush inserts left/right in alignments"
    mx_size: ": set maximum allowable DP matrix size to <x> Mb"
    r_dump: ": w/--refine, print all intermediate alignments to <f>"
    i_leaved: ": w/--refine,--cdump, output alnment as interleaved Stockholm"
    options: ""
    cm_file_output: ""
    alignment_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}