version 1.0

task Famsa {
  input {
    String? go
    String? ge
    String? t_go
    String? tge
    String? gsd
    String? gsl
    Boolean? dgr
    Boolean? d_go
    Boolean? dsp
    String? refinement_iterations_default
    Boolean? fr
    String? threads_means_default
    Boolean? verbose_mode_show
    Boolean? gt
    Boolean? me_do_id_tree
    Boolean? part_tree
    Boolean? gt_export
    Boolean? dist_export
    String? parameters
    String input_file_name
    String output_file_name
  }
  command <<<
    famsa \
      ~{parameters} \
      ~{input_file_name} \
      ~{output_file_name} \
      ~{if defined(go) then ("-go " +  '"' + go + '"') else ""} \
      ~{if defined(ge) then ("-ge " +  '"' + ge + '"') else ""} \
      ~{if defined(t_go) then ("-tgo " +  '"' + t_go + '"') else ""} \
      ~{if defined(tge) then ("-tge " +  '"' + tge + '"') else ""} \
      ~{if defined(gsd) then ("-gsd " +  '"' + gsd + '"') else ""} \
      ~{if defined(gsl) then ("-gsl " +  '"' + gsl + '"') else ""} \
      ~{true="-dgr" false="" dgr} \
      ~{true="-dgo" false="" d_go} \
      ~{true="-dsp" false="" dsp} \
      ~{if defined(refinement_iterations_default) then ("-r " +  '"' + refinement_iterations_default + '"') else ""} \
      ~{true="-fr" false="" fr} \
      ~{if defined(threads_means_default) then ("-t " +  '"' + threads_means_default + '"') else ""} \
      ~{true="-v" false="" verbose_mode_show} \
      ~{true="-gt" false="" gt} \
      ~{true="-medoidtree" false="" me_do_id_tree} \
      ~{true="-parttree" false="" part_tree} \
      ~{true="-gt_export" false="" gt_export} \
      ~{true="-dist_export" false="" dist_export}
  >>>
  parameter_meta {
    go: "- gap open cost (default: 14.85)"
    ge: "- gap extension cost (default: 1.25)"
    t_go: "- terminal gap open cost (default: 0.66)"
    tge: "- terminal gap extenstion cost (default: 0.66)"
    gsd: "- gap cost scaller div-term (default: 7)"
    gsl: "- gap cost scaller log-term (default: 45)"
    dgr: "- disable gap cost rescaling (default: enabled)"
    d_go: "- disable gap optimization (default: enabled)"
    dsp: "- disable sum of pairs optimization during refinement (default: enabled)"
    refinement_iterations_default: "- no. of refinement iterations (default: 100)"
    fr: "- force refinement (by default the refinement is disabled for sets larger than 1000 seq.)"
    threads_means_default: "- no. of threads, 0 means all available (default: 0)"
    verbose_mode_show: "- verbose mode, show timing information (default: disabled)"
    gt: "<sl | upgma | import <file>> - guide tree method (default: sl): * sl - single linkage * upgma - UPGMA * import <file> - imported from a Newick file"
    me_do_id_tree: "- use MedoidTree heuristic for speeding up tree construction (default: disabled)"
    part_tree: "- use PartTree heuristic for speeding up tree construction (default: disabled)"
    gt_export: "- export a guide tree to output file in Newick format"
    dist_export: "- export a distance matrix to output file in CSV format"
    parameters: ""
    input_file_name: ""
    output_file_name: ""
  }
}