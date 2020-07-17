version 1.0

task TbvcfreportCOMMAND {
  input {
    String? args
  }
  command <<<
    tbvcfreport COMMAND \
      ~{args}
  >>>
  parameter_meta {
    args: ""
  }
}