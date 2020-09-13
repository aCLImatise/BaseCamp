version 1.0

task Humann2Config {
  input {
    Boolean? print
    String? update
    String? name
    String? value
  }
  command <<<
    humann2_config \
      ~{name} \
      ~{value} \
      ~{if (print) then "--print" else ""} \
      ~{if defined(update) then ("--update " +  '"' + update + '"') else ""}
  >>>
  parameter_meta {
    print: "print the configuration"
    update: "<name> <value>\\nupdate the section : name to the value provided\\n"
    name: ""
    value: ""
  }
  output {
    File out_stdout = stdout()
  }
}