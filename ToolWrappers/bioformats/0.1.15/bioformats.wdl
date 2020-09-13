version 1.0

task Bioformats {
  input {
    Boolean? v
  }
  command <<<
    bioformats \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}