version 1.0

task Mugsy {
  input {
    String? duplications
    Boolean? debug
  }
  command <<<
    mugsy \
      ~{if defined(duplications) then ("-duplications " +  '"' + duplications + '"') else ""} \
      ~{true="-debug" false="" debug}
  >>>
  parameter_meta {
    duplications: "- Detect and report duplications. 0 - Skip. Default is 0."
    debug: "debug level. > 2 verbose"
  }
}