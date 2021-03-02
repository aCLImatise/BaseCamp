version 1.0

task JointSearch {
  input {
    String? rec_model
    String? rec_opt
    String? lib_pll_model
  }
  command <<<
    JointSearch \
      ~{if defined(rec_model) then ("--rec-model " +  '"' + rec_model + '"') else ""} \
      ~{if defined(rec_opt) then ("--rec-opt " +  '"' + rec_opt + '"') else ""} \
      ~{if defined(lib_pll_model) then ("--libpll-model " +  '"' + lib_pll_model + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/generax:1.2.3--h78e549b_0"
  }
  parameter_meta {
    rec_model: "{UndatedDL, UndatedDTL}"
    rec_opt: "{grid, simplex}"
    lib_pll_model: "{GTR, LG, DAYHOFF etc.}"
  }
  output {
    File out_stdout = stdout()
  }
}