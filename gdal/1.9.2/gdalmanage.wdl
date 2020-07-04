version 1.0

task Gdalmanage {
  input {
    Boolean? r
    Boolean? u
    String identify
    File files
  }
  command <<<
    gdalmanage \
      ~{identify} \
      ~{files} \
      ~{true="-r" false="" r} \
      ~{true="-u" false="" u}
  >>>
  parameter_meta {
    r: ""
    u: ""
    identify: ""
    files: ""
  }
}