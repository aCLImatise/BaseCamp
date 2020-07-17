version 1.0

task Kcutilmgr {
  input {
    Boolean? d
    String hex
    File? file
  }
  command <<<
    kcutilmgr \
      ~{hex} \
      ~{file} \
      ~{true="-d" false="" d}
  >>>
  parameter_meta {
    d: ""
    hex: ""
    file: ""
  }
}