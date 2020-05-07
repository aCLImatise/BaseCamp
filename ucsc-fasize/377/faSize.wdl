version 1.0

task FaSize {
  input {
    Boolean detailedDetailed
    Boolean tabTab
  }
  command <<<
    faSize \
      ~{true="-detailed" false="" detailedDetailed} \
      ~{true="-tab" false="" tabTab}
  >>>
}