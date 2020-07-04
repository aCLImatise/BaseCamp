version 1.0

task Eproxy {
  input {
    Boolean? file_of_aliases
    Boolean? pipe
  }
  command <<<
    eproxy \
      ~{true="-alias" false="" file_of_aliases} \
      ~{true="-pipe" false="" pipe}
  >>>
  parameter_meta {
    file_of_aliases: "File of aliases"
    pipe: "Read aliases from stdin"
  }
}