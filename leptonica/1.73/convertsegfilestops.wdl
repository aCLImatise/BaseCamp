version 1.0

task Convertsegfilestops {
  input {
    String? whereWhere
  }
  command <<<
    convertsegfilestops \
      ~{whereWhere}
  >>>
}