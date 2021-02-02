version 1.0

task RunClassifierpl {
  input {
    String perl
    String runmetaphylerdotpl
    String query
    String reference
    String taxonomy
    String classifiers
    String blast
    String prefix
  }
  command <<<
    runClassifier_pl \
      ~{perl} \
      ~{runmetaphylerdotpl} \
      ~{query} \
      ~{reference} \
      ~{taxonomy} \
      ~{classifiers} \
      ~{blast} \
      ~{prefix}
  >>>
  parameter_meta {
    perl: ""
    runmetaphylerdotpl: ""
    query: ""
    reference: ""
    taxonomy: ""
    classifiers: ""
    blast: ""
    prefix: ""
  }
  output {
    File out_stdout = stdout()
  }
}