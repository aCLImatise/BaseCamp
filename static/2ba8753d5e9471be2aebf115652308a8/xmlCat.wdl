version 1.0

task XmlCat {
  input {
    String? xxxXxx
  }
  command <<<
    xmlCat \
      ~{xxxXxx}
  >>>
}