version 1.0

task MegalodonExtras {
  input {
    Boolean? v
  }
  command <<<
    megalodon_extras \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}