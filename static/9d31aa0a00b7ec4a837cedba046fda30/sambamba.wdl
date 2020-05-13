version 1.0

task Sambamba {
  input {
    Boolean qQ
  }
  command <<<
    sambamba \
      ~{true="-q" false="" qQ}
  >>>
}