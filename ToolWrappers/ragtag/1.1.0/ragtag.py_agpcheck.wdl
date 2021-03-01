version 1.0

task RagtagpyAgpcheck {
  input {
    Int asm_one_dot_agp
    String? as_mndot_agp
  }
  command <<<
    ragtag_py agpcheck \
      ~{asm_one_dot_agp} \
      ~{as_mndot_agp}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ragtag:1.1.0--pyh7b7c402_0"
  }
  parameter_meta {
    asm_one_dot_agp: ""
    as_mndot_agp: ""
  }
  output {
    File out_stdout = stdout()
  }
}