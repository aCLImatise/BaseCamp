version 1.0

task Merqurysh {
  input {
    String read_db_dot_meryl
    String? mat_dot_meryl
    String? pat_dot_meryl
    Int asm_one_dot_fast_a
    Int? asm_two_dot_fast_a
    String out
  }
  command <<<
    merqury_sh \
      ~{read_db_dot_meryl} \
      ~{mat_dot_meryl} \
      ~{pat_dot_meryl} \
      ~{asm_one_dot_fast_a} \
      ~{asm_two_dot_fast_a} \
      ~{out}
  >>>
  runtime {
    docker: "quay.io/biocontainers/merqury:1.1--0"
  }
  parameter_meta {
    read_db_dot_meryl: ""
    mat_dot_meryl: ""
    pat_dot_meryl: ""
    asm_one_dot_fast_a: ""
    asm_two_dot_fast_a: ""
    out: ""
  }
  output {
    File out_stdout = stdout()
  }
}