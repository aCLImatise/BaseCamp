version 1.0

task XmlCat {
  input {
    String xxx
  }
  command <<<
    xmlCat \
      ~{xxx}
  >>>
  parameter_meta {
    xxx: ""
  }
}