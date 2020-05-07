version 1.0

task ProphyleCompress {
  input {
    Boolean cC
  }
  command <<<
    prophyle compress \
      ~{true="-c" false="" cC}
  >>>
}