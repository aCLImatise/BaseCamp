version 1.0

task Vcfannotategenotypes {
  input {
    String annotation_tag
    String var_1
    String var_2
  }
  command <<<
    vcfannotategenotypes \
      ~{annotation_tag} \
      ~{var_1} \
      ~{var_2}
  >>>
  parameter_meta {
    annotation_tag: ""
    var_1: ""
    var_2: ""
  }
}