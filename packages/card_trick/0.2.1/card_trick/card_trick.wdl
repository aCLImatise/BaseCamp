version 1.0

task Cardtrick {
  input {
    Boolean? man
    Boolean? v
  }
  command <<<
    card_trick \
      ~{if (man) then "--man" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    man: "Additional information"
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}