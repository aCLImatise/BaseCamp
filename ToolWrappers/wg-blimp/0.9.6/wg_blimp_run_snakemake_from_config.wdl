version 1.0

task WgblimpRunsnakemakefromconfig {
  input {
    Boolean? dry_run
    Int? cores
    String config_yaml
  }
  command <<<
    wg_blimp run_snakemake_from_config \
      ~{config_yaml} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dry_run: "Only dry-run the workflow."
    cores: "The maximum number of cores to use for running the\\npipeline. Cores per job are set in configuration file.\\n[required]"
    config_yaml: ""
  }
  output {
    File out_stdout = stdout()
  }
}