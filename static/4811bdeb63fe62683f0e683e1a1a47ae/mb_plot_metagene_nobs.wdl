version 1.0

task MbPlotMetageneNobs {
  input {
    String? downstream
    String? upstream
    String? gene
    Int? min
    Int? max
    String? plot_smooth
    String? label_center_a
    String? label_body
    String? label_center_b
    String? title
    Boolean? remove
    Boolean? verbose
  }
  command <<<
    mb-plot-metagene-nobs \
      ~{if defined(downstream) then ("--downstream " +  '"' + downstream + '"') else ""} \
      ~{if defined(upstream) then ("--upstream " +  '"' + upstream + '"') else ""} \
      ~{if defined(gene) then ("--gene " +  '"' + gene + '"') else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if defined(plot_smooth) then ("--plotSmooth " +  '"' + plot_smooth + '"') else ""} \
      ~{if defined(label_center_a) then ("--labelCenterA " +  '"' + label_center_a + '"') else ""} \
      ~{if defined(label_body) then ("--labelBody " +  '"' + label_body + '"') else ""} \
      ~{if defined(label_center_b) then ("--labelCenterB " +  '"' + label_center_b + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{true="--remove" false="" remove} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    downstream: "set downstream range"
    upstream: "set upstream range"
    gene: "set gene range"
    min: "minimum transcript size"
    max: "maximum transcript size"
    plot_smooth: "half of the window size used for the running mean"
    label_center_a: "plot label for the first center position"
    label_body: "for body (between A and B)"
    label_center_b: "plot label for the second center position"
    title: "plot title"
    remove: "remove temporary files"
    verbose: "verbose output"
  }
}