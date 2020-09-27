version 1.0

task GeneAssignpy {
  input {
    Int? i
    Int? e
    String? s
    String scg_cov_file
    String gamma_star_file
    String cov_file
    String epsilon_file
  }
  command <<<
    GeneAssign_py \
      ~{scg_cov_file} \
      ~{gamma_star_file} \
      ~{cov_file} \
      ~{epsilon_file} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    e: ""
    s: ""
    scg_cov_file: "input core gene coverages"
    gamma_star_file: "input MAP estimate frequencies"
    cov_file: "mean contig/genes coverages"
    epsilon_file: "predicted transition matrix"
  }
  output {
    File out_stdout = stdout()
  }
}