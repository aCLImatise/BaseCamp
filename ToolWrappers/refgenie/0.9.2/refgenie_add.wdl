version 1.0

task RefgenieAdd {
  input {
    File? genome_config
    Int? genome
    Boolean? force
    File? path
  }
  command <<<
    refgenie add \
      ~{if defined(genome_config) then ("--genome-config " +  '"' + genome_config + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""}
  >>>
  parameter_meta {
    genome_config: "Path to local genome configuration file. Optional if\\nREFGENIE environment variable is set."
    genome: "Reference assembly ID, e.g. mm10."
    force: "Do not prompt before action, approve upfront."
    path: "Relative local path to asset."
  }
  output {
    File out_stdout = stdout()
  }
}