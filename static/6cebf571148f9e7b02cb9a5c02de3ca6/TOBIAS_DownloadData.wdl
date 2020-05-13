version 1.0

task TOBIASDownloadData {
  input {
    Boolean endpointEndpoint
    Boolean bucketBucket
    Boolean patternsPatterns
    Boolean usernameUsername
    Boolean keyKey
    Boolean yamlYaml
    Boolean forceForce
    Int verbosityVerbosity
  }
  command <<<
    TOBIAS DownloadData \
      ~{true="--endpoint" false="" endpointEndpoint} \
      ~{true="--bucket" false="" bucketBucket} \
      ~{true="--patterns" false="" patternsPatterns} \
      ~{true="--username" false="" usernameUsername} \
      ~{true="--key" false="" keyKey} \
      ~{true="--yaml" false="" yamlYaml} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""}
  >>>
}