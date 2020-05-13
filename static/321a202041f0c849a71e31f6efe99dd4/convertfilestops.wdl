version 1.0

task Convertfilestops {
  input {
    String? whereWhere
  }
  command <<<
    convertfilestops \
      ~{whereWhere}
  >>>
}