version 1.0

task Hic2cool {
  input {
    Boolean? v
  }
  command <<<
    hic2cool \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}