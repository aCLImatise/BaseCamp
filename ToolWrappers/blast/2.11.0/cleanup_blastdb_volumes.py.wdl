version 1.0

task Cleanupblastdbvolumespy {
  command <<<
    cleanup_blastdb_volumes_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/blast:2.11.0--pl526he19e7b1_0"
  }
  output {
    File out_stdout = stdout()
  }
}