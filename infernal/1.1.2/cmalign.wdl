version 1.0

task Cmalign {
  input {
    String? output_alignment_file
    Boolean? configure_cm_global
    Boolean? opt_acc
    Boolean? cy_k
    Boolean? sample
    String? seed
    Boolean? not_run_c
    Boolean? sub
    Boolean? h_banded
    String? tau
    String? mx_size
    Boolean? fixed_tau
    String? max_tau
    Boolean? non_banded
    Boolean? small
    String? s_file
    String? t_file
    String? i_file
    String? el_file
    String? map_ali
    Boolean? map_str
    Boolean? noss
    String? in_format
    String? out_format
    Boolean? dna_out
    Boolean? no_prob
    Boolean? match_only
    Boolean? i_leaved
    String? regress
    Boolean? verbose
    String? cpu
    Boolean? options
    String cm_file
    String seq_file
  }
  command <<<
    cmalign \
      ~{cm_file} \
      ~{seq_file} \
      ~{if defined(output_alignment_file) then ("-o " +  '"' + output_alignment_file + '"') else ""} \
      ~{true="-g" false="" configure_cm_global} \
      ~{true="--optacc" false="" opt_acc} \
      ~{true="--cyk" false="" cy_k} \
      ~{true="--sample" false="" sample} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{true="--notrunc" false="" not_run_c} \
      ~{true="--sub" false="" sub} \
      ~{true="--hbanded" false="" h_banded} \
      ~{if defined(tau) then ("--tau " +  '"' + tau + '"') else ""} \
      ~{if defined(mx_size) then ("--mxsize " +  '"' + mx_size + '"') else ""} \
      ~{true="--fixedtau" false="" fixed_tau} \
      ~{if defined(max_tau) then ("--maxtau " +  '"' + max_tau + '"') else ""} \
      ~{true="--nonbanded" false="" non_banded} \
      ~{true="--small" false="" small} \
      ~{if defined(s_file) then ("--sfile " +  '"' + s_file + '"') else ""} \
      ~{if defined(t_file) then ("--tfile " +  '"' + t_file + '"') else ""} \
      ~{if defined(i_file) then ("--ifile " +  '"' + i_file + '"') else ""} \
      ~{if defined(el_file) then ("--elfile " +  '"' + el_file + '"') else ""} \
      ~{if defined(map_ali) then ("--mapali " +  '"' + map_ali + '"') else ""} \
      ~{true="--mapstr" false="" map_str} \
      ~{true="--noss" false="" noss} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(out_format) then ("--outformat " +  '"' + out_format + '"') else ""} \
      ~{true="--dnaout" false="" dna_out} \
      ~{true="--noprob" false="" no_prob} \
      ~{true="--matchonly" false="" match_only} \
      ~{true="--ileaved" false="" i_leaved} \
      ~{if defined(regress) then ("--regress " +  '"' + regress + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    output_alignment_file: ": output the alignment to file <f>, not stdout"
    configure_cm_global: ": configure CM for global alignment [default: local]"
    opt_acc: ": use the Holmes/Durbin optimal accuracy algorithm  [default]"
    cy_k: ": use the CYK algorithm"
    sample: ": sample alignment of each seq from posterior distribution"
    seed: ": w/--sample, set RNG seed to <n> (if 0: one-time arbitrary seed)"
    not_run_c: ": do not use truncated alignment algorithm"
    sub: ": build sub CM for columns b/t HMM predicted start/end points"
    h_banded: ": accelerate using CM plan 9 HMM derived bands  [default]"
    tau: ": set tail loss prob for HMM bands to <x>  [1e-7]  (1e-18<x<1)"
    mx_size: ": set maximum allowable DP matrix size to <x> Mb  [1028.0]  (x>0.)"
    fixed_tau: ": do not adjust tau (tighten bands) until mx size is < limit"
    max_tau: ": set max tau <x> when tightening HMM bands  [0.05]  (0<x<0.5)"
    non_banded: ": do not use HMM bands for faster alignment"
    small: ": use small memory divide and conquer (d&c) algorithm"
    s_file: ": dump alignment score information to file <f>"
    t_file: ": dump individual sequence parsetrees to file <f>"
    i_file: ": dump information on per-sequence inserts to file <f>"
    el_file: ": dump information on per-sequence EL inserts to file <f>"
    map_ali: ": include alignment in file <f> (same ali that CM came from)"
    map_str: ": include structure (w/pknots) from <f> from --mapali <f>"
    noss: ": cmbuild --noss option was used w/aln from --mapali <f>"
    in_format: ": assert <seqfile> is in format <s>: no autodetection"
    out_format: ": output alignment in format <s>  [Stockholm]"
    dna_out: ": output alignment as DNA (not RNA) sequence data"
    no_prob: ": do not include posterior probabilities in the alignment"
    match_only: ": include only match columns in output alignment"
    i_leaved: ": force output in interleaved Stockholm format"
    regress: ": save regression test data to file <f>"
    verbose: ": report extra information; mainly useful for debugging"
    cpu: ": number of parallel CPU workers to use for multithreads  (n>=0)"
    options: ""
    cm_file: ""
    seq_file: ""
  }
}