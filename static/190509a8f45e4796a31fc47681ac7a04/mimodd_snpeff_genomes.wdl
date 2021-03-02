version 1.0

task MimoddSnpeffgenomes {
  input {
    File? config
    File? ofile
    String snp_eff_genomes
  }
  command <<<
    mimodd snpeff_genomes \
      ~{snp_eff_genomes} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(ofile) then ("--ofile " +  '"' + ofile + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config: "location of the SnpEff installation directory. Will\\noverride MiModD config settings if provided."
    ofile: "redirect the output to the specified file (default:\\nstdout)\\n"
    snp_eff_genomes: ""
  }
  output {
    File out_stdout = stdout()
    File out_ofile = "${in_ofile}"
  }
}