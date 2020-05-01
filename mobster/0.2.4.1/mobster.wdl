version 1.0

task Mobster {
  input {
    Boolean propertiesProperties
    Boolean inIn
    Boolean outOut
    Boolean snSn
  }
  command <<<
    mobster \
      ~{true="-properties" false="" propertiesProperties} \
      ~{true="-in" false="" inIn} \
      ~{true="-out" false="" outOut} \
      ~{true="-sn" false="" snSn}
  >>>
}