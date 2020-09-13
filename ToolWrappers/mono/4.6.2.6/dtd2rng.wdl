version 1.0

task Dtd2rng {
  input {
    Boolean? compact
  }
  command <<<
    dtd2rng \
      ~{if (compact) then "--compact" else ""}
  >>>
  parameter_meta {
    compact: ": output compact syntax."
  }
  output {
    File out_stdout = stdout()
  }
}