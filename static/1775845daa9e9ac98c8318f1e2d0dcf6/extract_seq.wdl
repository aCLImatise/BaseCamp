version 1.0

task ExtractSeq {
  input {
    Boolean? r
  }
  command <<<
    extract_seq \
      ~{if (r) then "-r" else ""}
  >>>
  parameter_meta {
    r: ""
  }
  output {
    File out_stdout = stdout()
  }
}