version 1.0

task Dextract {
  input {
    Boolean? v_faq
    Boolean? o
    File? path
  }
  command <<<
    dextract \
      ~{path} \
      ~{true="-vfaq" false="" v_faq} \
      ~{true="-o" false="" o}
  >>>
  parameter_meta {
    v_faq: ""
    o: ""
    path: ""
  }
}