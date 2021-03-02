version 1.0

task VirmetCovplot {
  input {
    File? outdir
    File? organism
    String vir_met
    String var_command
    String cov_plot
  }
  command <<<
    virmet covplot \
      ~{vir_met} \
      ~{var_command} \
      ~{cov_plot} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outdir: "path to sample results directory"
    organism: "name of the organism as reported in orgs_list.tsv file"
    vir_met: ""
    var_command: ""
    cov_plot: ""
  }
  output {
    File out_stdout = stdout()
  }
}