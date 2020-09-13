version 1.0

task Bwamem2avx512bwIndex {
  input {
    String? p
    String in_dot_fast_a
  }
  command <<<
    bwa_mem2_avx512bw index \
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