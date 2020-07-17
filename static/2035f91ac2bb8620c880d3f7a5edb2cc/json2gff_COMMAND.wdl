version 1.0

task Json2gffCOMMAND {
  input {
    String? args
  }
  command <<<
    json2gff COMMAND \
      ~{args}
  >>>
  parameter_meta {
    args: ""
  }
}