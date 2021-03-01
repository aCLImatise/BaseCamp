version 1.0

task Cleanupblastdbvolumespy {
  command <<<
    cleanup_blastdb_volumes_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/rmblast:2.10.0--h2d02072_0"
  }
  output {
    File out_stdout = stdout()
  }
}