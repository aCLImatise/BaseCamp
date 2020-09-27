version 1.0

task Mclcm {
  input {
    String? shared_mcl_options
    Boolean? tf
    Boolean? show_default_options
    Int? bone
    Int? b_two
    String? an_not
    String? use_start_clustering
    Boolean? contract
    Boolean? sub_cluster
    Boolean? integrate
    Boolean? dispatch
    Int? iterate_most_num
    String? root
    File? cone
    File? stack
    File? coarse
    File? write_base
    String? write
    File? stem
    String? mplex
    String? quiet_level_logging
  }
  command <<<
    mclcm \
      ~{if defined(shared_mcl_options) then ("-a " +  '"' + shared_mcl_options + '"') else ""} \
      ~{if (tf) then "-tf" else ""} \
      ~{if (show_default_options) then "-z" else ""} \
      ~{if defined(bone) then ("-b1 " +  '"' + bone + '"') else ""} \
      ~{if defined(b_two) then ("-b2 " +  '"' + b_two + '"') else ""} \
      ~{if defined(an_not) then ("-annot " +  '"' + an_not + '"') else ""} \
      ~{if defined(use_start_clustering) then ("-c " +  '"' + use_start_clustering + '"') else ""} \
      ~{if (contract) then "--contract" else ""} \
      ~{if (sub_cluster) then "--subcluster" else ""} \
      ~{if (integrate) then "--integrate" else ""} \
      ~{if (dispatch) then "--dispatch" else ""} \
      ~{if defined(iterate_most_num) then ("-n " +  '"' + iterate_most_num + '"') else ""} \
      ~{if defined(root) then ("-root " +  '"' + root + '"') else ""} \
      ~{if defined(cone) then ("-cone " +  '"' + cone + '"') else ""} \
      ~{if defined(stack) then ("-stack " +  '"' + stack + '"') else ""} \
      ~{if defined(coarse) then ("-coarse " +  '"' + coarse + '"') else ""} \
      ~{if defined(write_base) then ("-write-base " +  '"' + write_base + '"') else ""} \
      ~{if defined(write) then ("-write " +  '"' + write + '"') else ""} \
      ~{if defined(stem) then ("-stem " +  '"' + stem + '"') else ""} \
      ~{if defined(mplex) then ("--mplex " +  '"' + mplex + '"') else ""} \
      ~{if defined(quiet_level_logging) then ("-q " +  '"' + quiet_level_logging + '"') else ""}
  >>>
  parameter_meta {
    shared_mcl_options: "shared mcl options"
    tf: "<func(arg)[, func(arg)]*> apply unary transformations to matrix values"
    show_default_options: "show default shared options"
    bone: "dedicated parameters to construct base transformed matrix"
    b_two: "dedicated parameters to construct base expanded matrix"
    an_not: "describes the experiment, useful when command-line is propagated"
    use_start_clustering: "use as start clustering"
    contract: "use contraction approach (default)"
    sub_cluster: "use subclustering approach"
    integrate: "construct hierarchy from cluster (file) arguments"
    dispatch: "construct hierarchy from multiple mcl runs"
    iterate_most_num: "iterate at most <num> times (default: until root clustering)"
    root: "make sure universe clustering is at the top"
    cone: "file to write nested cluster stack to"
    stack: "file to write expanded cluster stack to"
    coarse: "file to write coarsened graphs to"
    write_base: "file to write base graph to"
    write: "<tags> may contain 'stack', 'cone', 'coarse', 'steps'"
    stem: "file prefix for cone, stack, and coarse"
    mplex: "additionally write clusterings to separate files"
    quiet_level_logging: "quiet level of logging"
  }
  output {
    File out_stdout = stdout()
  }
}