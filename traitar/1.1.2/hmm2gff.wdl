version 1.0

task Hmm2gff.py {
  input {
    String var_map
    String features
    String contributing
    String var_3
    String var_4
    String class_fication
    String back
    String var_7
    String var_8
    String functional
    String annotation
    String and
    String gene
    String prediction
  }
  command <<<
    hmm2gff.py \
      ~{var_map} \
      ~{features} \
      ~{contributing} \
      ~{var_3} \
      ~{var_4} \
      ~{class_fication} \
      ~{back} \
      ~{var_7} \
      ~{var_8} \
      ~{functional} \
      ~{annotation} \
      ~{and} \
      ~{gene} \
      ~{prediction}
  >>>
  parameter_meta {
    var_map: ""
    features: ""
    contributing: ""
    var_3: ""
    var_4: ""
    class_fication: ""
    back: ""
    var_7: ""
    var_8: ""
    functional: ""
    annotation: ""
    and: ""
    gene: ""
    prediction: ""
  }
}