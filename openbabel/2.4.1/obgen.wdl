version 1.0

task Obgen {
  input {
    Boolean? ff
    File filename
  }
  command <<<
    obgen \
      ~{filename} \
      ~{true="-ff" false="" ff}
  >>>
  parameter_meta {
    ff: "select a forcefield"
    filename: ""
  }
}