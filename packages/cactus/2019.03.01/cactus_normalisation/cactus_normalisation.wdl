version 1.0

task CactusNormalisation {
  input {
    Boolean? loglevel
    Boolean? cactus_disk
    Boolean? max_number_of_chains
  }
  command <<<
    cactus_normalisation \
      ~{if (loglevel) then "--logLevel" else ""} \
      ~{if (cactus_disk) then "--cactusDisk" else ""} \
      ~{if (max_number_of_chains) then "--maxNumberOfChains" else ""}
  >>>
  parameter_meta {
    loglevel: ": Set the log level"
    cactus_disk: ": stKVDatabase conf string for the cactus database"
    max_number_of_chains: ": The maximum number of individual chains to promote into a flower."
  }
  output {
    File out_stdout = stdout()
  }
}