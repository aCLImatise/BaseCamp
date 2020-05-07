version 1.0

task Convertsegfilestopdf {
  input {
    String? whereWhere
  }
  command <<<
    convertsegfilestopdf \
      ~{whereWhere}
  >>>
}