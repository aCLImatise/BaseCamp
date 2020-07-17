version 1.0

task Hmmsim {
  input {
    Boolean? obtain_length_statistics
    Boolean? verbose_print_scores
    String? length_random_target
    String? number_random_target
    String? direct_output_file
    String? a_file
    String? e_file
    String? f_file
    String? pfile
    String? x_file
    Boolean? fs
    Boolean? sw
    Boolean? ls
    Boolean? unihit_glocal_alignment
    Boolean? v_it
    Boolean? fwd
    Boolean? hyb
    Boolean? msv
    Boolean? fast
    String? tm_in
    String? tmax
    String? t_points
    Boolean? t_linear
    String? eml
    String? emn
    String? evl
    String? evn
    String? efl
    String? efn
    String? eft
    Boolean? stall
    String? seed
    Boolean? bg_flat
    Boolean? bg_comp
    Boolean? x_no_length_model
    String? nu
    String? p_thresh
    Boolean? options
    String hmm_file
  }
  command <<<
    hmmsim \
      ~{hmm_file} \
      ~{true="-a" false="" obtain_length_statistics} \
      ~{true="-v" false="" verbose_print_scores} \
      ~{if defined(length_random_target) then ("-L " +  '"' + length_random_target + '"') else ""} \
      ~{if defined(number_random_target) then ("-N " +  '"' + number_random_target + '"') else ""} \
      ~{if defined(direct_output_file) then ("-o " +  '"' + direct_output_file + '"') else ""} \
      ~{if defined(a_file) then ("--afile " +  '"' + a_file + '"') else ""} \
      ~{if defined(e_file) then ("--efile " +  '"' + e_file + '"') else ""} \
      ~{if defined(f_file) then ("--ffile " +  '"' + f_file + '"') else ""} \
      ~{if defined(pfile) then ("--pfile " +  '"' + pfile + '"') else ""} \
      ~{if defined(x_file) then ("--xfile " +  '"' + x_file + '"') else ""} \
      ~{true="--fs" false="" fs} \
      ~{true="--sw" false="" sw} \
      ~{true="--ls" false="" ls} \
      ~{true="--s" false="" unihit_glocal_alignment} \
      ~{true="--vit" false="" v_it} \
      ~{true="--fwd" false="" fwd} \
      ~{true="--hyb" false="" hyb} \
      ~{true="--msv" false="" msv} \
      ~{true="--fast" false="" fast} \
      ~{if defined(tm_in) then ("--tmin " +  '"' + tm_in + '"') else ""} \
      ~{if defined(tmax) then ("--tmax " +  '"' + tmax + '"') else ""} \
      ~{if defined(t_points) then ("--tpoints " +  '"' + t_points + '"') else ""} \
      ~{true="--tlinear" false="" t_linear} \
      ~{if defined(eml) then ("--EmL " +  '"' + eml + '"') else ""} \
      ~{if defined(emn) then ("--EmN " +  '"' + emn + '"') else ""} \
      ~{if defined(evl) then ("--EvL " +  '"' + evl + '"') else ""} \
      ~{if defined(evn) then ("--EvN " +  '"' + evn + '"') else ""} \
      ~{if defined(efl) then ("--EfL " +  '"' + efl + '"') else ""} \
      ~{if defined(efn) then ("--EfN " +  '"' + efn + '"') else ""} \
      ~{if defined(eft) then ("--Eft " +  '"' + eft + '"') else ""} \
      ~{true="--stall" false="" stall} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{true="--bgflat" false="" bg_flat} \
      ~{true="--bgcomp" false="" bg_comp} \
      ~{true="--x-no-lengthmodel" false="" x_no_length_model} \
      ~{if defined(nu) then ("--nu " +  '"' + nu + '"') else ""} \
      ~{if defined(p_thresh) then ("--pthresh " +  '"' + p_thresh + '"') else ""} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    obtain_length_statistics: ": obtain alignment length statistics too"
    verbose_print_scores: ": verbose: print scores"
    length_random_target: ": length of random target seqs  [100]  (n>0)"
    number_random_target: ": number of random target seqs  [1000]  (n>0)"
    direct_output_file: ": direct output to file <f>, not stdout"
    a_file: ": output alignment lengths to file <f>"
    e_file: ": output E vs. E plots to <f> in xy format"
    f_file: ": output filter fraction: # seqs passing P thresh"
    pfile: ": output P(S>x) plots to <f> in xy format"
    x_file: ": output bitscores as binary double vector to <f>"
    fs: ": multihit local alignment  [default]"
    sw: ": unihit local alignment"
    ls: ": multihit glocal alignment"
    unihit_glocal_alignment: ": unihit glocal alignment"
    v_it: ": score seqs with the Viterbi algorithm  [default]"
    fwd: ": score seqs with the Forward algorithm"
    hyb: ": score seqs with the Hybrid algorithm"
    msv: ": score seqs with the MSV algorithm"
    fast: ": use the optimized versions of the above"
    tm_in: ": set lower bound tail mass for fwd,island  [0.02]"
    tmax: ": set lower bound tail mass for fwd,island  [0.02]"
    t_points: ": set number of tail probs to try  [1]"
    t_linear: ": use linear not log spacing of tail probs"
    eml: ": length of sequences for MSV Gumbel mu fit  [200]  (n>0)"
    emn: ": number of sequences for MSV Gumbel mu fit  [200]  (n>0)"
    evl: ": length of sequences for Viterbi Gumbel mu fit  [200]  (n>0)"
    evn: ": number of sequences for Viterbi Gumbel mu fit  [200]  (n>0)"
    efl: ": length of sequences for Forward exp tail tau fit  [100]  (n>0)"
    efn: ": number of sequences for Forward exp tail tau fit  [200]  (n>0)"
    eft: ": tail mass for Forward exponential tail tau fit  [0.04]  (0<x<1)"
    stall: ": arrest after start: for debugging MPI under gdb"
    seed: ": set random number seed to <n>  [0]"
    bg_flat: ": set uniform background frequencies"
    bg_comp: ": set bg frequencies to model's average composition"
    x_no_length_model: ": turn the H3 length model off"
    nu: ": set nu parameter (# expected HSPs) for GMSV  [2.0]"
    p_thresh: ": set P-value threshold for --ffile  [0.02]"
    options: ""
    hmm_file: ""
  }
}