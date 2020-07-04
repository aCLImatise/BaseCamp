version 1.0

task MisoZip {
  input {
    String to
    String compress
    String a
    Directory directory
    String containing
    String miso
    File files
  }
  command <<<
    miso_zip \
      ~{to} \
      ~{compress} \
      ~{a} \
      ~{directory} \
      ~{containing} \
      ~{miso} \
      ~{files}
  >>>
  parameter_meta {
    to: ""
    compress: ""
    a: ""
    directory: ""
    containing: ""
    miso: ""
    files: ""
  }
}