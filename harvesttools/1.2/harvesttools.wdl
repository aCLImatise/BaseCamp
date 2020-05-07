version 1.0

task Harvesttools {
  input {
    Boolean qQ
  }
  command <<<
    harvesttools \
      ~{true="-q" false="" qQ}
  >>>
}