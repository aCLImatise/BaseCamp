version 1.0

task CactusFastaGenerator {
  input {
    Boolean? loglevel
    Boolean? cactus_disk
    Boolean? reference_event_string
    Boolean? flower_name
    File? output_file
  }
  command <<<
    cactus_fastaGenerator \
      ~{if (loglevel) then "--logLevel" else ""} \
      ~{if (cactus_disk) then "--cactusDisk" else ""} \
      ~{if (reference_event_string) then "--referenceEventString" else ""} \
      ~{if (flower_name) then "--flowerName" else ""} \
      ~{if (output_file) then "--outputFile" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    loglevel: ": Set the log level"
    cactus_disk: ": The location of the flower disk directory"
    reference_event_string: ": String identifying the reference event."
    flower_name: ": Name of flower to print string for."
    output_file: ": File to put final output in."
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}