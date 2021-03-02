version 1.0

task QualOffsetpy {
  input {
    String fast_q
  }
  command <<<
    qual_offset_py \
      ~{fast_q}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_q: "including stdin or compressed file {zip,gz,tar,bz}"
  }
  output {
    File out_stdout = stdout()
  }
}