version 1.0

task Intervene {
  input {
    Boolean? cite
  }
  command <<<
    intervene \
      ~{if (cite) then "--cite" else ""}
  >>>
  parameter_meta {
    cite: "show citation information and exit"
  }
  output {
    File out_stdout = stdout()
  }
}