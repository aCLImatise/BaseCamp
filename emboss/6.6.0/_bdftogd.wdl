version 1.0

task _bdftogd {
  input {
    String bdf_to_gd
    String fontname
    File filename
  }
  command <<<
    _bdftogd \
      ~{bdf_to_gd} \
      ~{fontname} \
      ~{filename}
  >>>
  parameter_meta {
    bdf_to_gd: ""
    fontname: ""
    filename: ""
  }
}