version 1.0

task PapaaExternalSamplePredTargeneClassifierpy {
  input {
    File? classifier_summary
    File? expression_file
    Int? status_sign
    Int? figure_one
    Int? figure_two
  }
  command <<<
    papaa_external_sample_pred_targene_classifier_py \
      ~{if defined(classifier_summary) then ("--classifier_summary " +  '"' + classifier_summary + '"') else ""} \
      ~{if defined(expression_file) then ("--expression_file " +  '"' + expression_file + '"') else ""} \
      ~{if defined(status_sign) then ("--status_sign " +  '"' + status_sign + '"') else ""} \
      ~{if defined(figure_one) then ("--figure1 " +  '"' + figure_one + '"') else ""} \
      ~{if defined(figure_two) then ("--figure2 " +  '"' + figure_two + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/papaa:0.1.9--0"
  }
  parameter_meta {
    classifier_summary: "location of classifier_summary file"
    expression_file: "path for external sample expression data\\nfile[fpkm/rlog/vlog"
    status_sign: "assigned tumor [1] or normal sample status[-1]"
    figure_one: "Path to save to figure 1"
    figure_two: "Path to save to figure 2"
  }
  output {
    File out_stdout = stdout()
  }
}