version 1.0

task RefgenieListr {
  input {
    File? genome_config
    Boolean? skip_read_lock
    Boolean? reference_assembly_id
    String? var_3
  }
  command <<<
    refgenie listr \
      ~{var_3} \
      ~{if defined(genome_config) then ("--genome-config " +  '"' + genome_config + '"') else ""} \
      ~{if (skip_read_lock) then "--skip-read-lock" else ""} \
      ~{if (reference_assembly_id) then "-g" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/refgenie:0.10.0--py_0"
  }
  parameter_meta {
    genome_config: "Path to local genome configuration file. Optional if\\nREFGENIE environment variable is set."
    skip_read_lock: "Whether the config file should not be locked for reading"
    reference_assembly_id: "[G ...], --genome [G ...]  Reference assembly ID, e.g. mm10."
    var_3: ""
  }
  output {
    File out_stdout = stdout()
  }
}