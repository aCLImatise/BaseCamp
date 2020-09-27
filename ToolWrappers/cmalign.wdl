version 1.0

task Cmalign {
  input {
    File? output_alignment_file
    Boolean? configure_cm_global
    Boolean? opt_acc
    Boolean? cy_k
    Boolean? sample
    Int? seed
    Boolean? not_run_c
    Boolean? sub
    Boolean? h_banded
    Float? tau
    Int? mx_size
    Boolean? fixed_tau
    Int? max_tau
    Boolean? non_banded
    Boolean? small
    File? s_file
    File? t_file
    File? i_file
    File? el_file
    File? map_ali
    Boolean? map_str
    Boolean? noss
    String? in_format
    String? out_format
    Boolean? dna_out
    Boolean? no_prob
    Boolean? match_only
    Boolean? i_leaved
    File? regress
    Boolean? verbose
    Int? cpu
    Boolean? options
    String cm_file
    String seq_file
  }
  command <<<
    cmalign \
      ~{cm_file} \
      ~{seq_file} \
      ~{if defined(output_alignment_file) then ("-o " +  '"' + output_alignment_file + '"') else ""} \
      ~{if (configure_cm_global) then "-g" else ""} \
      ~{if (opt_acc) then "--optacc" else ""} \
      ~{if (cy_k) then "--cyk" else ""} \
      ~{if (sample) then "--sample" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (not_run_c) then "--notrunc" else ""} \
      ~{if (sub) then "--sub" else ""} \
      ~{if (h_banded) then "--hbanded" else ""} \
      ~{if defined(tau) then ("--tau " +  '"' + tau + '"') else ""} \
      ~{if defined(mx_size) then ("--mxsize " +  '"' + mx_size + '"') else ""} \
      ~{if (fixed_tau) then "--fixedtau" else ""} \
      ~{if defined(max_tau) then ("--maxtau " +  '"' + max_tau + '"') else ""} \
      ~{if (non_banded) then "--nonbanded" else ""} \
      ~{if (small) then "--small" else ""} \
      ~{if defined(s_file) then ("--sfile " +  '"' + s_file + '"') else ""} \
      ~{if defined(t_file) then ("--tfile " +  '"' + t_file + '"') else ""} \
      ~{if defined(i_file) then ("--ifile " +  '"' + i_file + '"') else ""} \
      ~{if defined(el_file) then ("--elfile " +  '"' + el_file + '"') else ""} \
      ~{if defined(map_ali) then ("--mapali " +  '"' + map_ali + '"') else ""} \
      ~{if (map_str) then "--mapstr" else ""} \
      ~{if (noss) then "--noss" else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(out_format) then ("--outformat " +  '"' + out_format + '"') else ""} \
      ~{if (dna_out) then "--dnaout" else ""} \
      ~{if (no_prob) then "--noprob" else ""} \
      ~{if (match_only) then "--matchonly" else ""} \
      ~{if (i_leaved) then "--ileaved" else ""} \
      ~{if defined(regress) then ("--regress " +  '"' + regress + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if (options) then "-options" else ""}
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
  output {
    File out_stdout = stdout()
    File out_output_alignment_file = "${in_output_alignment_file}"
  }
}