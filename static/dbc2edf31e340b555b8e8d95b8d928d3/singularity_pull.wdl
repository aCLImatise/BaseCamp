version 1.0

task SingularityPull {
  input {
    Boolean nameName
    String commitCommit
    Boolean hashHash
    Boolean forceForce
    Boolean sizeSize
  }
  command <<<
    singularity pull \
      ~{true="--name" false="" nameName} \
      ~{if defined(commitCommit) then ("--commit " +  '"' + commitCommit + '"') else ""} \
      ~{true="--hash" false="" hashHash} \
      ~{true="--force" false="" forceForce} \
      ~{true="--size" false="" sizeSize}
  >>>
}