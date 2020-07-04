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
      ~{true="--print" false="" print} \
      ~{if defined(update) then ("--update " +  '"' + update + '"') else ""}
  >>>
  parameter_meta {
    print: "print the configuration"
    update: "<name> <value> update the section : name to the value provided"
    name: ""
    value: ""
  }
}