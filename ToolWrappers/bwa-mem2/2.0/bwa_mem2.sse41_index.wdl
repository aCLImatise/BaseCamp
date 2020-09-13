version 1.0

task Bwamem2sse41Index {
  input {
    String? p
    String in_dot_fast_a
  }
  command <<<
    bwa_mem2_sse41 index \
      ~{in_dot_fast_a} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""}
  >>>
  parameter_meta {
    p: ""
    in_dot_fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}