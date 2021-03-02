version 1.0

task GmcloserblastplConduct {
  input {
    String? target_s_caf
  }
  command <<<
    gmcloser_blast_pl conduct \
      ~{if defined(target_s_caf) then ("--target_scaf " +  '"' + target_s_caf + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    target_s_caf: "is not specied:"
  }
  output {
    File out_stdout = stdout()
  }
}