version 1.0

task SrfIndexHash {
  input {
    Boolean cC
  }
  command <<<
    srf_index_hash \
      ~{true="-c" false="" cC}
  >>>
}