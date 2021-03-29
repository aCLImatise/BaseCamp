version 1.0

task Bwamem2avx2Index {
  input {
    String? p
    String in_dot_fast_a
  }
  command <<<
    bwa_mem2_avx2 index \
      ~{in_dot_fast_a} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bwa-mem2:2.2.1--he513fc3_0"
  }
  parameter_meta {
    p: ""
    in_dot_fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}