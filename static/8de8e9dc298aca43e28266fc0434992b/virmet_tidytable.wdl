version 1.0

task VirmetTidytable {
  input {
    File? outdir
    String vir_met
    String var_command
    String tidy_table
  }
  command <<<
    virmet tidytable \
      ~{vir_met} \
      ~{var_command} \
      ~{tidy_table} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outdir: "path to run results directory (virmet_output_...)"
    vir_met: ""
    var_command: ""
    tidy_table: ""
  }
  output {
    File out_stdout = stdout()
  }
}