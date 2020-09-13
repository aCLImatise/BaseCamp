version 1.0

task GmcloserDeviation {
  input {
    String? target_s_caf
  }
  command <<<
    gmcloser deviation \
      ~{if defined(target_s_caf) then ("--target_scaf " +  '"' + target_s_caf + '"') else ""}
  >>>
  parameter_meta {
    target_s_caf: "is not specied:"
  }
  output {
    File out_stdout = stdout()
  }
}