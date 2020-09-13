version 1.0

task Gkmtrain {
  input {
    Boolean? set_function_default
    Int? set_word_default
    Int? set_number_informative
    Int? set_maximum_number
    Float? set_gamma_rbf
    Int? set_initial_value
    Float? set_halflife_h
    Float? set_regularization_default
    Float? set_parameter_default
    Float? set_parameter_svmc
    Float? set_cache_size
    Boolean? set_use_heuristics
    Int? set_nfold_default
    Int? run_ith_validation
    Int? set_random_seed
    Boolean? set_level_msgs
    Int? set_number_default
    String pos_file
    String neg_file
    String out_prefix
  }
  command <<<
    gkmtrain \
      ~{pos_file} \
      ~{neg_file} \
      ~{out_prefix} \
      ~{if (set_function_default) then "-t" else ""} \
      ~{if defined(set_word_default) then ("-l " +  '"' + set_word_default + '"') else ""} \
      ~{if defined(set_number_informative) then ("-k " +  '"' + set_number_informative + '"') else ""} \
      ~{if defined(set_maximum_number) then ("-d " +  '"' + set_maximum_number + '"') else ""} \
      ~{if defined(set_gamma_rbf) then ("-g " +  '"' + set_gamma_rbf + '"') else ""} \
      ~{if defined(set_initial_value) then ("-M " +  '"' + set_initial_value + '"') else ""} \
      ~{if defined(set_halflife_h) then ("-H " +  '"' + set_halflife_h + '"') else ""} \
      ~{if defined(set_regularization_default) then ("-c " +  '"' + set_regularization_default + '"') else ""} \
      ~{if defined(set_parameter_default) then ("-e " +  '"' + set_parameter_default + '"') else ""} \
      ~{if defined(set_parameter_svmc) then ("-w " +  '"' + set_parameter_svmc + '"') else ""} \
      ~{if defined(set_cache_size) then ("-m " +  '"' + set_cache_size + '"') else ""} \
      ~{if (set_use_heuristics) then "-s" else ""} \
      ~{if defined(set_nfold_default) then ("-x " +  '"' + set_nfold_default + '"') else ""} \
      ~{if defined(run_ith_validation) then ("-i " +  '"' + run_ith_validation + '"') else ""} \
      ~{if defined(set_random_seed) then ("-r " +  '"' + set_random_seed + '"') else ""} \
      ~{if (set_level_msgs) then "-v" else ""} \
      ~{if defined(set_number_default) then ("-T " +  '"' + set_number_default + '"') else ""}
  >>>
  parameter_meta {
    set_function_default: "<0 ~ 5>   set kernel function (default: 4 wgkm)\\nNOTE: RBF kernels (3 and 5) work best with -c 10 -g 2\\n0 -- gapped-kmer\\n1 -- estimated l-mer with full filter\\n2 -- estimated l-mer with truncated filter (gkm)\\n3 -- gkm + RBF (gkmrbf)\\n4 -- gkm + center weighted (wgkm)\\n[weight = max(M, floor(M*exp(-ln(2)*D/H)+1))]\\n5 -- gkm + center weighted + RBF (wgkmrbf)"
    set_word_default: "set word length, 3<=l<=12 (default: 11)"
    set_number_informative: "set number of informative column, k<=l (default: 7)"
    set_maximum_number: "set maximum number of mismatches to consider, d<=4 (default: 3)"
    set_gamma_rbf: "set gamma for RBF kernel. -t 3 or 5 only (default: 1.0)"
    set_initial_value: "set the initial value (M) of the exponential decay function\\nfor wgkm-kernels. max=255, -t 4 or 5 only (default: 50)"
    set_halflife_h: "set the half-life parameter (H) that is the distance (D) required\\nto fall to half of its initial value in the exponential decay\\nfunction for wgkm-kernels. -t 4 or 5 only (default: 50)"
    set_regularization_default: "set the regularization parameter SVM-C (default: 1.0)"
    set_parameter_default: "set the precision parameter epsilon (default: 0.001)"
    set_parameter_svmc: "set the parameter SVM-C to w*C for the positive set (default: 1.0)"
    set_cache_size: "set cache memory size in MB (default: 100.0)\\nNOTE: Large cache signifcantly reduces runtime. >4Gb is recommended"
    set_use_heuristics: "if set, use the shrinking heuristics"
    set_nfold_default: "set N-fold cross validation mode (default: no cross validation)"
    run_ith_validation: "run i-th cross validation only 1<=i<=ncv (default: all)"
    set_random_seed: "set random seed for shuffling in cross validation mode (default: 1)"
    set_level_msgs: "<0 ~ 4>   set the level of verbosity (default: 2)\\n0 -- error msgs only (ERROR)\\n1 -- warning msgs (WARN)\\n2 -- progress msgs at coarse-grained level (INFO)\\n3 -- progress msgs at fine-grained level (DEBUG)\\n4 -- progress msgs at finer-grained level (TRACE)"
    set_number_default: "set the number of threads for parallel calculation, 1, 4, or 16\\n(default: 1)\\n"
    pos_file: ""
    neg_file: ""
    out_prefix: ""
  }
  output {
    File out_stdout = stdout()
  }
}