version 1.0

task LogRegProthintspl {
  input {
    Float? coef_zero
    Float? coef_one
    Float? coef_two
  }
  command <<<
    log_reg_prothints_pl \
      ~{if defined(coef_zero) then ("--coef0 " +  '"' + coef_zero + '"') else ""} \
      ~{if defined(coef_one) then ("--coef1 " +  '"' + coef_one + '"') else ""} \
      ~{if defined(coef_two) then ("--coef2 " +  '"' + coef_two + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/braker2:2.1.6--hdfd78af_1"
  }
  parameter_meta {
    coef_zero: "Default -4.00529"
    coef_one: "Default 4.73909 for mult_norm"
    coef_two: "Default 9.09026 for al_score"
  }
  output {
    File out_stdout = stdout()
  }
}