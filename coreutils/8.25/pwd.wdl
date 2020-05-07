version 1.0

task Pwd {
  input {
    Boolean logicalLogical
    Boolean physicalPhysical
  }
  command <<<
    pwd \
      ~{true="--logical" false="" logicalLogical} \
      ~{true="--physical" false="" physicalPhysical}
  >>>
}