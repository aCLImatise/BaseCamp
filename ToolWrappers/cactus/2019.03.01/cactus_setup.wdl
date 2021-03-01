version 1.0

task CactusSetup {
  input {
    Boolean? loglevel
    Boolean? cactus_disk
    Boolean? species_tree
    Boolean? out_group_events
    Boolean? make_event_headers_alphanumeric
    Boolean? debug
  }
  command <<<
    cactus_setup \
      ~{if (loglevel) then "--logLevel" else ""} \
      ~{if (cactus_disk) then "--cactusDisk" else ""} \
      ~{if (species_tree) then "--speciesTree" else ""} \
      ~{if (out_group_events) then "--outgroupEvents" else ""} \
      ~{if (make_event_headers_alphanumeric) then "--makeEventHeadersAlphaNumeric" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    loglevel: ": Set the log level"
    cactus_disk: ": The location of the flower disk directory"
    species_tree: ": The species tree, which will form the skeleton of the event tree"
    out_group_events: ": Leaf events in the species tree identified as outgroups"
    make_event_headers_alphanumeric: ": Remove non alpha-numeric characters from event header names"
    debug: ": Run some extra debug checks at the end"
  }
  output {
    File out_stdout = stdout()
  }
}