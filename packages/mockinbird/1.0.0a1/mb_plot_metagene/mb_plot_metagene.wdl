version 1.0

task Mbplotmetagene {
  input {
    String? downstream_bp
    String? upstream_bp
    String? gene_bp
    Int? min_ts_len
    Int? max_ts_len
    Int? smooth_window
    String? label_center_a
    String? label_body
    String? label_center_b
    String? title
    Boolean? cleanup
    String? seed
    Int? n_bs_iterations
    Int? n_processes
  }
  command <<<
    mb_plot_metagene \
      ~{if defined(downstream_bp) then ("--downstream_bp " +  '"' + downstream_bp + '"') else ""} \
      ~{if defined(upstream_bp) then ("--upstream_bp " +  '"' + upstream_bp + '"') else ""} \
      ~{if defined(gene_bp) then ("--gene_bp " +  '"' + gene_bp + '"') else ""} \
      ~{if defined(min_ts_len) then ("--min_ts_len " +  '"' + min_ts_len + '"') else ""} \
      ~{if defined(max_ts_len) then ("--max_ts_len " +  '"' + max_ts_len + '"') else ""} \
      ~{if defined(smooth_window) then ("--smooth_window " +  '"' + smooth_window + '"') else ""} \
      ~{if defined(label_center_a) then ("--labelCenterA " +  '"' + label_center_a + '"') else ""} \
      ~{if defined(label_body) then ("--labelBody " +  '"' + label_body + '"') else ""} \
      ~{if defined(label_center_b) then ("--labelCenterB " +  '"' + label_center_b + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if (cleanup) then "--cleanup" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(n_bs_iterations) then ("--n_bs_iterations " +  '"' + n_bs_iterations + '"') else ""} \
      ~{if defined(n_processes) then ("--n_processes " +  '"' + n_processes + '"') else ""}
  >>>
  parameter_meta {
    downstream_bp: "downstream bp"
    upstream_bp: "upstream bp"
    gene_bp: "annotation body bp"
    min_ts_len: "minimum annotation length"
    max_ts_len: "maximum annotation length"
    smooth_window: "window size used for running mean smoothing"
    label_center_a: "plot label for the first center position"
    label_body: "for body (between A and B)"
    label_center_b: "plot label for the second center position"
    title: "plot title"
    cleanup: "remove temporary files"
    seed: "random seed"
    n_bs_iterations: "number of bootstrap iterations"
    n_processes: "number of parallel processes spawned\\n"
  }
  output {
    File out_stdout = stdout()
  }
}