version 1.0

task LdhelmetCommand {
  input {
    String? args
  }
  command <<<
    ldhelmet command \
      ~{args}
  >>>
  parameter_meta {
    args: ""
  }
}