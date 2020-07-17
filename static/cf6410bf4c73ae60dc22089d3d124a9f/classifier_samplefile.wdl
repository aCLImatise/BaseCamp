version 1.0

task ClassifierSamplefile {
  input {
    String tax_a_sim
    String train
    String version
  }
  command <<<
    classifier samplefile \
      ~{tax_a_sim} \
      ~{train} \
      ~{version}
  >>>
  parameter_meta {
    tax_a_sim: "- calculate and plot the similarities within taxa"
    train: "- retrain classifier"
    version: "- taxonomy versions of the pre-compiled training sets"
  }
}