version 1.0

task CactusAddReferenceCoordinates {
  input {
    Boolean? loglevel
    Boolean? cactus_disk
    Boolean? secondary_disk
    Boolean? reference_event_string
    Boolean? bottom_up_phase
  }
  command <<<
    cactus_addReferenceCoordinates \
      ~{if (loglevel) then "--logLevel" else ""} \
      ~{if (cactus_disk) then "--cactusDisk" else ""} \
      ~{if (secondary_disk) then "--secondaryDisk" else ""} \
      ~{if (reference_event_string) then "--referenceEventString" else ""} \
      ~{if (bottom_up_phase) then "--bottomUpPhase" else ""}
  >>>
  parameter_meta {
    loglevel: ": Set the log level"
    cactus_disk: ": The location of the flower disk directory"
    secondary_disk: ": The location of secondary disk"
    reference_event_string: ": String identifying the reference event."
    bottom_up_phase: ": Do bottom up stage instead of top down."
  }
  output {
    File out_stdout = stdout()
  }
}