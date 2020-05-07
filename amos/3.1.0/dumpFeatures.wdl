version 1.0

task DumpFeatures {
  input {
    Boolean iI
    Boolean uU
    Boolean gG
  }
  command <<<
    dumpFeatures \
      ~{true="-i" false="" iI} \
      ~{true="-u" false="" uU} \
      ~{true="-g" false="" gG}
  >>>
}