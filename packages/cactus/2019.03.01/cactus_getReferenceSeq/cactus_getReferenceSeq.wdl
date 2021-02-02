version 1.0

task CactusGetReferenceSeq {
  input {
    Boolean? loglevel
    Boolean? name
    Boolean? cactus_disk
    File? output_file
  }
  command <<<
    cactus_getReferenceSeq \
      ~{if (loglevel) then "--logLevel" else ""} \
      ~{if (name) then "--name" else ""} \
      ~{if (cactus_disk) then "--cactusDisk" else ""} \
      ~{if (output_file) then "--outputFile" else ""}
  >>>
  parameter_meta {
    loglevel: ": Set the log level"
    name: ": name of the reference sequence's event"
    cactus_disk: ": The location of the flower disk directory"
    output_file: ": Name of output fasta file"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}