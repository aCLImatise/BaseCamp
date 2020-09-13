version 1.0

task MglexcliClassify {
  input {
    Boolean? normalize
    File? model
    File? ab_coverage
    File? diff_coverage
    File? composition
    File? labels
    Float? beta
    File? log_file
    Boolean? v
    String classify
  }
  command <<<
    mglex_cli classify \
      ~{classify} \
      ~{if (normalize) then "--normalize" else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(ab_coverage) then ("--abcoverage " +  '"' + ab_coverage + '"') else ""} \
      ~{if defined(diff_coverage) then ("--diffcoverage " +  '"' + diff_coverage + '"') else ""} \
      ~{if defined(composition) then ("--composition " +  '"' + composition + '"') else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if defined(beta) then ("--beta " +  '"' + beta + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    normalize: "Output class posterior instead of the raw likelihood"
    model: "Pre-calculated classificaton model file"
    ab_coverage: "Absolute mean coverage data file for Poisson Model"
    diff_coverage: "Differential mean coverage data file for Multinomial Model"
    composition: "Compositional data (numeric) file for Naive Bayes Model"
    labels: "Label-type data file (e.g. a taxonomic path) for Hierarchical Naive Bayes Model"
    beta: "Beta correction factor (e.g. determined via MSE evaluation); default 1.0"
    log_file: "File for logging"
    v: ""
    classify: ""
  }
  output {
    File out_stdout = stdout()
  }
}