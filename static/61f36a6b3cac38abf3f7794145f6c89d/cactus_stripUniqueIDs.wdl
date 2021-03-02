version 1.0

task CactusStripUniqueIDs {
  input {
    String? cactus_disk
  }
  command <<<
    cactus_stripUniqueIDs \
      ~{if defined(cactus_disk) then ("--cactusDisk " +  '"' + cactus_disk + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cactus_disk: "must be provided"
  }
  output {
    File out_stdout = stdout()
  }
}