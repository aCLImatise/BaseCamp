version 1.0

task Bwamem2Index {
  input {
    String? p
    String in_dot_fast_a
  }
  command <<<
    bwa_mem2 index \
      ~{in_dot_fast_a} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    p: ""
    in_dot_fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}