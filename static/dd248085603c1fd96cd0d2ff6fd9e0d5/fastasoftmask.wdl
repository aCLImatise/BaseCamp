version 1.0

task Fastasoftmask {
  input {
    Boolean? help
    File? unmasked
    File? masked
  }
  command <<<
    fastasoftmask \
      ~{if (help) then "--help" else ""} \
      ~{if defined(unmasked) then ("--unmasked " +  '"' + unmasked + '"') else ""} \
      ~{if defined(masked) then ("--masked " +  '"' + masked + '"') else ""}
  >>>
  parameter_meta {
    help: ""
    unmasked: ""
    masked: ""
  }
  output {
    File out_stdout = stdout()
  }
}