version 1.0

task CnvkitpyGenemetrics {
  input {
    String? segment
    Int? threshold
    Int? min_probes
    Boolean? drop_low_coverage
    Boolean? haploid_x_reference
    String? sample_sex
    File? output_table_file
    Boolean? mean
    Boolean? median
    Boolean? mode
    Boolean? t_test
    Boolean? stdev
    Boolean? sem
    Boolean? mad
    Boolean? mse
    Boolean? iqr
    Boolean? bivar
    Boolean? ci
    Boolean? pi
    Float? alpha
    Int? bootstrap
  }
  command <<<
    cnvkit_py genemetrics \
      ~{if defined(segment) then ("--segment " +  '"' + segment + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(min_probes) then ("--min-probes " +  '"' + min_probes + '"') else ""} \
      ~{if (drop_low_coverage) then "--drop-low-coverage" else ""} \
      ~{if (haploid_x_reference) then "--haploid-x-reference" else ""} \
      ~{if defined(sample_sex) then ("--sample-sex " +  '"' + sample_sex + '"') else ""} \
      ~{if defined(output_table_file) then ("--output " +  '"' + output_table_file + '"') else ""} \
      ~{if (mean) then "--mean" else ""} \
      ~{if (median) then "--median" else ""} \
      ~{if (mode) then "--mode" else ""} \
      ~{if (t_test) then "--ttest" else ""} \
      ~{if (stdev) then "--stdev" else ""} \
      ~{if (sem) then "--sem" else ""} \
      ~{if (mad) then "--mad" else ""} \
      ~{if (mse) then "--mse" else ""} \
      ~{if (iqr) then "--iqr" else ""} \
      ~{if (bivar) then "--bivar" else ""} \
      ~{if (ci) then "--ci" else ""} \
      ~{if (pi) then "--pi" else ""} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if defined(bootstrap) then ("--bootstrap " +  '"' + bootstrap + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cnvkit:0.9.8--py_0"
  }
  parameter_meta {
    segment: "Segmentation calls (.cns), the output of the 'segment'\\ncommand)."
    threshold: "Copy number change threshold to report a gene\\ngain/loss. [Default: 0.2]"
    min_probes: "Minimum number of covered probes to report a\\ngain/loss. [Default: 3]"
    drop_low_coverage: "Drop very-low-coverage bins before segmentation to\\navoid false-positive deletions in poor-quality tumor\\nsamples."
    haploid_x_reference: "Assume inputs were normalized to a male reference\\n(i.e. female samples will have +1 log-coverage of\\nchrX; otherwise male samples would have -1 chrX)."
    sample_sex: "Specify the sample's chromosomal sex as male or\\nfemale. (Otherwise guessed from X and Y coverage)."
    output_table_file: "Output table file name."
    mean: "Mean log2-ratio (unweighted)."
    median: "Median."
    mode: "Mode (i.e. peak density of log2 ratios)."
    t_test: "One-sample t-test of bin log2 ratios versus 0.0."
    stdev: "Standard deviation."
    sem: "Standard error of the mean."
    mad: "Median absolute deviation (standardized)."
    mse: "Mean squared error."
    iqr: "Inter-quartile range."
    bivar: "Tukey's biweight midvariance."
    ci: "Confidence interval (by bootstrap)."
    pi: "Prediction interval."
    alpha: "Level to estimate confidence and prediction intervals;\\nuse with --ci and --pi. [Default: 0.05]"
    bootstrap: "Number of bootstrap iterations to estimate confidence\\ninterval; use with --ci. [Default: 100]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_table_file = "${in_output_table_file}"
  }
}