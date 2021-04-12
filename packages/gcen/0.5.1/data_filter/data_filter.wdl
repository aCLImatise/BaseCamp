version 1.0

task DataFilter {
  input {
    File? cut_off_mean
    Int? cut_off_sd
    Int? percent_mean
    Int? percent_sd
  }
  command <<<
    data_filter \
      ~{if defined(cut_off_mean) then ("--cutoff_mean " +  '"' + cut_off_mean + '"') else ""} \
      ~{if defined(cut_off_sd) then ("--cutoff_sd " +  '"' + cut_off_sd + '"') else ""} \
      ~{if defined(percent_mean) then ("--percent_mean " +  '"' + percent_mean + '"') else ""} \
      ~{if defined(percent_sd) then ("--percent_sd " +  '"' + percent_sd + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gcen:0.5.1--hc9558a2_0"
  }
  parameter_meta {
    cut_off_mean: "mean cutoff of gene expression (default: 0.0)"
    cut_off_sd: "standard deviation cutoff of gene expression (default: 0.0)"
    percent_mean: "keep a proportion of total genes based mean of gene expression (default: 1.0)"
    percent_sd: "keep a proportion of total genes based standard deviation of gene expression (default: 1.0)"
  }
  output {
    File out_stdout = stdout()
  }
}