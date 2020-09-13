version 1.0

task MglexcliTrain {
  input {
    File? responsibility
    File? out_model
    File? weight
    File? ab_coverage
    File? diff_coverage
    File? composition
    File? labels
    File? log_file
    Boolean? v
    String train
  }
  command <<<
    mglex_cli train \
      ~{train} \
      ~{if defined(responsibility) then ("--responsibility " +  '"' + responsibility + '"') else ""} \
      ~{if defined(out_model) then ("--outmodel " +  '"' + out_model + '"') else ""} \
      ~{if defined(weight) then ("--weight " +  '"' + weight + '"') else ""} \
      ~{if defined(ab_coverage) then ("--abcoverage " +  '"' + ab_coverage + '"') else ""} \
      ~{if defined(diff_coverage) then ("--diffcoverage " +  '"' + diff_coverage + '"') else ""} \
      ~{if defined(composition) then ("--composition " +  '"' + composition + '"') else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    responsibility: "Responsibility (weight) matrix file; default standard input"
    out_model: "Output classificaton model file"
    weight: "Weights (sequence length) file"
    ab_coverage: "Absolute mean coverage data file for Poisson Model"
    diff_coverage: "Differential mean coverage data file for Multinomial Model"
    composition: "Compositional data (numeric) file for Naive Bayes Model"
    labels: "Label-type data file (e.g. a taxonomic path) for Hierarchical Naive Bayes Model"
    log_file: "File for logging"
    v: ""
    train: ""
  }
  output {
    File out_stdout = stdout()
    File out_out_model = "${in_out_model}"
  }
}