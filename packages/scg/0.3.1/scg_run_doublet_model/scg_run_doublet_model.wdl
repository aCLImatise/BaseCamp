version 1.0

task ScgRunDoubletModel {
  input {
    File? config_file
    String single
    String cell
    String genotype_r
    String run_doublet_model
  }
  command <<<
    scg run_doublet_model \
      ~{single} \
      ~{cell} \
      ~{genotype_r} \
      ~{run_doublet_model} \
      ~{if defined(config_file) then ("--config_file " +  '"' + config_file + '"') else ""}
  >>>
  parameter_meta {
    config_file: ""
    single: ""
    cell: ""
    genotype_r: ""
    run_doublet_model: ""
  }
  output {
    File out_stdout = stdout()
  }
}