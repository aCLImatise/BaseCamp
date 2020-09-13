version 1.0

task RefgenieGetseq {
  input {
    File? genome_config
    Int? genome
    Int? locus
  }
  command <<<
    refgenie getseq \
      ~{if defined(genome_config) then ("--genome-config " +  '"' + genome_config + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(locus) then ("--locus " +  '"' + locus + '"') else ""}
  >>>
  parameter_meta {
    genome_config: "Path to local genome configuration file. Optional if\\nREFGENIE environment variable is set."
    genome: "Reference assembly ID, e.g. mm10."
    locus: "Coordinates of desired sequence; e.g.\\n'chr1:50000-50200'.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}