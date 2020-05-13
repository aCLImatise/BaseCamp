version 1.0

task Lexmapr {
  input {
    Boolean oO
    Boolean fullFull
    String configConfig
    Boolean bucketBucket
    Boolean noNoCache
    String profileProfile
    String? inputInputFile
  }
  command <<<
    lexmapr \
      ~{inputInputFile} \
      ~{true="-o" false="" oO} \
      ~{true="--full" false="" fullFull} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{true="--bucket" false="" bucketBucket} \
      ~{true="--no-cache" false="" noNoCache} \
      ~{if defined(profileProfile) then ("--profile " +  '"' + profileProfile + '"') else ""}
  >>>
}