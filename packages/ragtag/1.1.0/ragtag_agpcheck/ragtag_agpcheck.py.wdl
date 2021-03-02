version 1.0

task RagtagAgpcheckpy {
  input {
    String ragtag_do_tpy
    String agp_check
    Int asm_one_dot_agp
    String? as_mndot_agp
  }
  command <<<
    ragtag_agpcheck_py \
      ~{ragtag_do_tpy} \
      ~{agp_check} \
      ~{asm_one_dot_agp} \
      ~{as_mndot_agp}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ragtag:1.1.0--pyh7b7c402_0"
  }
  parameter_meta {
    ragtag_do_tpy: ""
    agp_check: ""
    asm_one_dot_agp: ""
    as_mndot_agp: ""
  }
  output {
    File out_stdout = stdout()
  }
}