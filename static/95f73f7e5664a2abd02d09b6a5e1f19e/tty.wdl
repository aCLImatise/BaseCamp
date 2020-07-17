version 1.0

task Tty {
  input {
    String? silent
    String? option
  }
  command <<<
    tty \
      ~{option} \
      ~{if defined(silent) then ("--silent " +  '"' + silent + '"') else ""}
  >>>
  parameter_meta {
    silent: "nothing, only return an exit status"
    option: ""
  }
}