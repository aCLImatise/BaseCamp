version 1.0

task Hmmbuild {
  input {
    String? name_hmm_s
    String? direct_summary_output
    String? resave_annotated_possibly
    Boolean? amino
    Boolean? dna
    Boolean? rna
    Boolean? fast
    Boolean? hand
    String? sym_frac
    String? frag_thresh
    Boolean? wpb
    Boolean? wgs_c
    Boolean? w_blosum
    Boolean? w_none
    Boolean? w_given
    String? wid
    Boolean? e_ent
    Boolean? ec_lust
    Boolean? en_one
    String? e_set
    String? ere
    String? e_sigma
    String? eid
    Boolean? p_none
    Boolean? pla_place
    Boolean? single_mx
    String? popen
    String? p_extend
    String? mx
    String? mx_file
    String? eml
    String? emn
    String? evl
    String? evn
    String? efl
    String? efn
    String? eft
    String? cpu
    Boolean? stall
    String? in_format
    String? seed
    String? w_beta
    String? w_length
    String? max_insert_len
    Boolean? options
    String hmm_file_out
    String msa_file
  }
  command <<<
    hmmbuild \
      ~{hmm_file_out} \
      ~{msa_file} \
      ~{if defined(name_hmm_s) then ("-n " +  '"' + name_hmm_s + '"') else ""} \
      ~{if defined(direct_summary_output) then ("-o " +  '"' + direct_summary_output + '"') else ""} \
      ~{if defined(resave_annotated_possibly) then ("-O " +  '"' + resave_annotated_possibly + '"') else ""} \
      ~{true="--amino" false="" amino} \
      ~{true="--dna" false="" dna} \
      ~{true="--rna" false="" rna} \
      ~{true="--fast" false="" fast} \
      ~{true="--hand" false="" hand} \
      ~{if defined(sym_frac) then ("--symfrac " +  '"' + sym_frac + '"') else ""} \
      ~{if defined(frag_thresh) then ("--fragthresh " +  '"' + frag_thresh + '"') else ""} \
      ~{true="--wpb" false="" wpb} \
      ~{true="--wgsc" false="" wgs_c} \
      ~{true="--wblosum" false="" w_blosum} \
      ~{true="--wnone" false="" w_none} \
      ~{true="--wgiven" false="" w_given} \
      ~{if defined(wid) then ("--wid " +  '"' + wid + '"') else ""} \
      ~{true="--eent" false="" e_ent} \
      ~{true="--eclust" false="" ec_lust} \
      ~{true="--enone" false="" en_one} \
      ~{if defined(e_set) then ("--eset " +  '"' + e_set + '"') else ""} \
      ~{if defined(ere) then ("--ere " +  '"' + ere + '"') else ""} \
      ~{if defined(e_sigma) then ("--esigma " +  '"' + e_sigma + '"') else ""} \
      ~{if defined(eid) then ("--eid " +  '"' + eid + '"') else ""} \
      ~{true="--pnone" false="" p_none} \
      ~{true="--plaplace" false="" pla_place} \
      ~{true="--singlemx" false="" single_mx} \
      ~{if defined(popen) then ("--popen " +  '"' + popen + '"') else ""} \
      ~{if defined(p_extend) then ("--pextend " +  '"' + p_extend + '"') else ""} \
      ~{if defined(mx) then ("--mx " +  '"' + mx + '"') else ""} \
      ~{if defined(mx_file) then ("--mxfile " +  '"' + mx_file + '"') else ""} \
      ~{if defined(eml) then ("--EmL " +  '"' + eml + '"') else ""} \
      ~{if defined(emn) then ("--EmN " +  '"' + emn + '"') else ""} \
      ~{if defined(evl) then ("--EvL " +  '"' + evl + '"') else ""} \
      ~{if defined(evn) then ("--EvN " +  '"' + evn + '"') else ""} \
      ~{if defined(efl) then ("--EfL " +  '"' + efl + '"') else ""} \
      ~{if defined(efn) then ("--EfN " +  '"' + efn + '"') else ""} \
      ~{if defined(eft) then ("--Eft " +  '"' + eft + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{true="--stall" false="" stall} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(w_beta) then ("--w_beta " +  '"' + w_beta + '"') else ""} \
      ~{if defined(w_length) then ("--w_length " +  '"' + w_length + '"') else ""} \
      ~{if defined(max_insert_len) then ("--maxinsertlen " +  '"' + max_insert_len + '"') else ""} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    name_hmm_s: ": name the HMM <s>"
    direct_summary_output: ": direct summary output to file <f>, not stdout"
    resave_annotated_possibly: ": resave annotated, possibly modified MSA to file <f>"
    amino: ": input alignment is protein sequence data"
    dna: ": input alignment is DNA sequence data"
    rna: ": input alignment is RNA sequence data"
    fast: ": assign cols w/ >= symfrac residues as consensus  [default]"
    hand: ": manual construction (requires reference annotation)"
    sym_frac: ": sets sym fraction controlling --fast construction  [0.5]"
    frag_thresh: ": if L <= x*alen, tag sequence as a fragment  [0.5]"
    wpb: ": Henikoff position-based weights  [default]"
    wgs_c: ": Gerstein/Sonnhammer/Chothia tree weights"
    w_blosum: ": Henikoff simple filter weights"
    w_none: ": don't do any relative weighting; set all to 1"
    w_given: ": use weights as given in MSA file"
    wid: ": for --wblosum: set identity cutoff  [0.62]  (0<=x<=1)"
    e_ent: ": adjust eff seq # to achieve relative entropy target  [default]"
    ec_lust: ": eff seq # is # of single linkage clusters"
    en_one: ": no effective seq # weighting: just use nseq"
    e_set: ": set eff seq # for all models to <x>"
    ere: ": for --eent: set minimum rel entropy/position to <x>"
    e_sigma: ": for --eent: set sigma param to <x>  [45.0]"
    eid: ": for --eclust: set fractional identity cutoff to <x>  [0.62]"
    p_none: ": don't use any prior; parameters are frequencies"
    pla_place: ": use a Laplace +1 prior"
    single_mx: ": use substitution score matrix for single-sequence inputs"
    popen: ": gap open probability (with --singlemx)"
    p_extend: ": gap extend probability (with --singlemx)"
    mx: ": substitution score matrix (built-in matrices, with --singlemx)"
    mx_file: ": read substitution score matrix from file <f> (with --singlemx)"
    eml: ": length of sequences for MSV Gumbel mu fit  [200]  (n>0)"
    emn: ": number of sequences for MSV Gumbel mu fit  [200]  (n>0)"
    evl: ": length of sequences for Viterbi Gumbel mu fit  [200]  (n>0)"
    evn: ": number of sequences for Viterbi Gumbel mu fit  [200]  (n>0)"
    efl: ": length of sequences for Forward exp tail tau fit  [100]  (n>0)"
    efn: ": number of sequences for Forward exp tail tau fit  [200]  (n>0)"
    eft: ": tail mass for Forward exponential tail tau fit  [0.04]  (0<x<1)"
    cpu: ": number of parallel CPU workers for multithreads"
    stall: ": arrest after start: for attaching debugger to process"
    in_format: ": assert input alifile is in format <s> (no autodetect)"
    seed: ": set RNG seed to <n> (if 0: one-time arbitrary seed)  [42]"
    w_beta: ": tail mass at which window length is determined"
    w_length: ": window length "
    max_insert_len: ": pretend all inserts are length <= <n>"
    options: ""
    hmm_file_out: ""
    msa_file: ""
  }
}