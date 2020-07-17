version 1.0

task SsuCmbuild {
  input {
    String? name_cms_s
    Boolean? append_cm_cmfile
    Boolean? force_allow_overwriting
    Boolean? _verbose_output
    Boolean? i_ins
    String? w_beta
    Boolean? devhelp
    String? r_search
    Boolean? binary
    Boolean? rf
    String? gap_thresh
    Boolean? ignorant
    Boolean? wgs_c
    Boolean? w_blosum
    Boolean? wpb
    Boolean? w_none
    Boolean? w_given
    String? pb_switch
    String? wid
    Boolean? e_ent
    Boolean? en_one
    String? ere
    String? e_hmm_re
    String? null
    String? prior
    String? c_target
    String? cmax_id
    Boolean? build_separate_cm
    Boolean? c_orig
    String? c_dump
    String? refine
    Boolean? gibbs
    String? wgibbs_set_seed
    Boolean? wrefine_align_locally
    Boolean? print_individual_sequence
    Boolean? cy_k
    Boolean? sub
    Boolean? non_banded
    String? tau
    Boolean? fins
    String? mx_size
    String? r_dump
    Boolean? i_leaved
    Boolean? options
    String cm_file_output
    String alignment_file
  }
  command <<<
    ssu-cmbuild \
      ~{cm_file_output} \
      ~{alignment_file} \
      ~{if defined(name_cms_s) then ("-n " +  '"' + name_cms_s + '"') else ""} \
      ~{true="-A" false="" append_cm_cmfile} \
      ~{true="-F" false="" force_allow_overwriting} \
      ~{true="-v" false="" _verbose_output} \
      ~{true="--iins" false="" i_ins} \
      ~{if defined(w_beta) then ("--Wbeta " +  '"' + w_beta + '"') else ""} \
      ~{true="--devhelp" false="" devhelp} \
      ~{if defined(r_search) then ("--rsearch " +  '"' + r_search + '"') else ""} \
      ~{true="--binary" false="" binary} \
      ~{true="--rf" false="" rf} \
      ~{if defined(gap_thresh) then ("--gapthresh " +  '"' + gap_thresh + '"') else ""} \
      ~{true="--ignorant" false="" ignorant} \
      ~{true="--wgsc" false="" wgs_c} \
      ~{true="--wblosum" false="" w_blosum} \
      ~{true="--wpb" false="" wpb} \
      ~{true="--wnone" false="" w_none} \
      ~{true="--wgiven" false="" w_given} \
      ~{if defined(pb_switch) then ("--pbswitch " +  '"' + pb_switch + '"') else ""} \
      ~{if defined(wid) then ("--wid " +  '"' + wid + '"') else ""} \
      ~{true="--eent" false="" e_ent} \
      ~{true="--enone" false="" en_one} \
      ~{if defined(ere) then ("--ere " +  '"' + ere + '"') else ""} \
      ~{if defined(e_hmm_re) then ("--ehmmre " +  '"' + e_hmm_re + '"') else ""} \
      ~{if defined(null) then ("--null " +  '"' + null + '"') else ""} \
      ~{if defined(prior) then ("--prior " +  '"' + prior + '"') else ""} \
      ~{if defined(c_target) then ("--ctarget " +  '"' + c_target + '"') else ""} \
      ~{if defined(cmax_id) then ("--cmaxid " +  '"' + cmax_id + '"') else ""} \
      ~{true="--call" false="" build_separate_cm} \
      ~{true="--corig" false="" c_orig} \
      ~{if defined(c_dump) then ("--cdump " +  '"' + c_dump + '"') else ""} \
      ~{if defined(refine) then ("--refine " +  '"' + refine + '"') else ""} \
      ~{true="--gibbs" false="" gibbs} \
      ~{if defined(wgibbs_set_seed) then ("-s " +  '"' + wgibbs_set_seed + '"') else ""} \
      ~{true="-l" false="" wrefine_align_locally} \
      ~{true="-a" false="" print_individual_sequence} \
      ~{true="--cyk" false="" cy_k} \
      ~{true="--sub" false="" sub} \
      ~{true="--nonbanded" false="" non_banded} \
      ~{if defined(tau) then ("--tau " +  '"' + tau + '"') else ""} \
      ~{true="--fins" false="" fins} \
      ~{if defined(mx_size) then ("--mxsize " +  '"' + mx_size + '"') else ""} \
      ~{if defined(r_dump) then ("--rdump " +  '"' + r_dump + '"') else ""} \
      ~{true="--ileaved" false="" i_leaved} \
      ~{true="-options" false="" options}
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
}