version 1.0

task Hmm2gffpy {
  input {
    String var_map
    String features
    String contributing
    String to
    String the
    String class_fication
    String back
    String functional
    String annotation
    String and
    String gene
    String prediction
  }
  command <<<
    hmm2gff_py \
      ~{var_map} \
      ~{features} \
      ~{contributing} \
      ~{to} \
      ~{the} \
      ~{class_fication} \
      ~{back} \
      ~{functional} \
      ~{annotation} \
      ~{and} \
      ~{gene} \
      ~{prediction}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    var_map: ""
    features: ""
    contributing: ""
    to: ""
    the: ""
    class_fication: ""
    back: ""
    functional: ""
    annotation: ""
    and: ""
    gene: ""
    prediction: ""
  }
  output {
    File out_stdout = stdout()
  }
}