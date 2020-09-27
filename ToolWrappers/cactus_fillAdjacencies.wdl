version 1.0

task CactusFillAdjacencies {
  input {
    Boolean? loglevel
    Boolean? cactus_disk
    Boolean? tempdir_root
  }
  command <<<
    cactus_fillAdjacencies \
      ~{if (loglevel) then "--logLevel" else ""} \
      ~{if (cactus_disk) then "--cactusDisk" else ""} \
      ~{if (tempdir_root) then "--tempDirRoot" else ""}
  >>>
  parameter_meta {
    loglevel: ": Set the log level"
    cactus_disk: ": The location of the flower disk directory"
    tempdir_root: ": The temp file root directory"
  }
  output {
    File out_stdout = stdout()
  }
}