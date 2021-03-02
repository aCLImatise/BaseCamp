version 1.0

task CactusCheck {
  input {
    Boolean? loglevel
    Boolean? cactus_disk
    Boolean? recursive
    Boolean? check_normalised
  }
  command <<<
    cactus_check \
      ~{if (loglevel) then "--logLevel" else ""} \
      ~{if (cactus_disk) then "--cactusDisk" else ""} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if (check_normalised) then "--checkNormalised" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    loglevel: ": Set the log level"
    cactus_disk: ": The location of the flower disk directory"
    recursive: ": Check all flowers recursively"
    check_normalised: ": Check cactus is normalised"
  }
  output {
    File out_stdout = stdout()
  }
}