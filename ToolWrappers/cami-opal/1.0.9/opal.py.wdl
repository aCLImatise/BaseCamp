version 1.0

task Opalpy {
  input {
    File? gold_standard_file
    Directory? output_dir
    Boolean? normalize
    Int? filter
    Boolean? plot_abundances
    String? labels
    String? time
    String? memory
    String? desc
    String? ranks
    Int? metrics_plot_rel
    String? metrics_plot_abs
    Boolean? silent
    String profiles_files
  }
  command <<<
    opal_py \
      ~{profiles_files} \
      ~{if defined(gold_standard_file) then ("--gold_standard_file " +  '"' + gold_standard_file + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if (normalize) then "--normalize" else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{if (plot_abundances) then "--plot_abundances" else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if defined(time) then ("--time " +  '"' + time + '"') else ""} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""} \
      ~{if defined(desc) then ("--desc " +  '"' + desc + '"') else ""} \
      ~{if defined(ranks) then ("--ranks " +  '"' + ranks + '"') else ""} \
      ~{if defined(metrics_plot_rel) then ("--metrics_plot_rel " +  '"' + metrics_plot_rel + '"') else ""} \
      ~{if defined(metrics_plot_abs) then ("--metrics_plot_abs " +  '"' + metrics_plot_abs + '"') else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cami-opal:1.0.9--py_0"
  }
  parameter_meta {
    gold_standard_file: "Gold standard file"
    output_dir: "Directory to write the results to"
    normalize: "Normalize samples"
    filter: "Filter out the predictions with the smallest relative\\nabundances summing up to [FILTER]% within a rank\\n(affects only precision, default: 0)"
    plot_abundances: "Plot abundances in the gold standard (can take some\\nminutes)"
    labels: "Comma-separated profiles names"
    time: "Comma-separated runtimes in hours"
    memory: "Comma-separated memory usages in gigabytes"
    desc: "Description for HTML page"
    ranks: "Highest and lowest taxonomic ranks to consider in\\nperformance rankings, comma-separated. Valid ranks:\\nsuperkingdom, phylum, class, order, family, genus,\\nspecies, strain (default:superkingdom,species)"
    metrics_plot_rel: "Metrics for spider plot of relative performances,\\nfirst character, comma-separated. Valid metrics:\\nc:completeness, p:purity, l:L1 norm, w:weighted\\nUnifrac, f:false positives, t:true positives (default:\\nc,p,l,w)"
    metrics_plot_abs: "Metrics for spider plot of absolute performances,\\nfirst character, comma-separated. Valid metrics:\\nc:completeness, p:purity, b:Bray-Curtis (default:\\nc,p,b)"
    silent: "Silent mode"
    profiles_files: "Files of profiles"
  }
  output {
    File out_stdout = stdout()
  }
}