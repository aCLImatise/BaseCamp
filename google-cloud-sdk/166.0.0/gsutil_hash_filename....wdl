version 1.0

task GsutilHashFilename... {
  input {
    Boolean cC
    Boolean mM
  }
  command <<<
    gsutil hash filename... \
      ~{true="-c" false="" cC} \
      ~{true="-m" false="" mM}
  >>>
}