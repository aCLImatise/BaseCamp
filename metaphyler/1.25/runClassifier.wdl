version 1.0

task RunClassifier.pl {
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
    runClassifier.pl \
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
}