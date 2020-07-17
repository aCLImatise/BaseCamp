version 1.0

task Mglobgen {
  input {
    Boolean? ff
    String ob_gen
    File filename
  }
  command <<<
    mglobgen \
      ~{ob_gen} \
      ~{filename} \
      ~{true="-ff" false="" ff}
  >>>
  parameter_meta {
    ff: "select a forcefield"
    ob_gen: ""
    filename: ""
  }
}