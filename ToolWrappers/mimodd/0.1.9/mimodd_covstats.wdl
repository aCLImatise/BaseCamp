version 1.0

task MimoddCovstats {
  input {
    File? ofile
    String cov_stats
    String var_input
    File file
  }
  command <<<
    mimodd covstats \
      ~{cov_stats} \
      ~{var_input} \
      ~{file} \
      ~{if defined(ofile) then ("--ofile " +  '"' + ofile + '"') else ""}
  >>>
  parameter_meta {
    ofile: "redirect the output to the specified file (default:\\nstdout)\\n"
    cov_stats: ""
    var_input: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
    File out_ofile = "${in_ofile}"
  }
}