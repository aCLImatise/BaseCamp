version 1.0

task CactusPhylogeny {
  input {
    Boolean? loglevel
    Boolean? cactus_disk
  }
  command <<<
    cactus_phylogeny \
      ~{if (loglevel) then "--logLevel" else ""} \
      ~{if (cactus_disk) then "--cactusDisk" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    loglevel: ": Set the log level"
    cactus_disk: ": The location of the flower disk directory"
  }
  output {
    File out_stdout = stdout()
  }
}