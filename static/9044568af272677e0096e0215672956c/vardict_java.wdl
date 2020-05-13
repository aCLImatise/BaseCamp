version 1.0

task VardictJava {
  input {
    String downDownSample
    Boolean zZ
  }
  command <<<
    vardict-java \
      ~{if defined(downDownSample) then ("--downsample " +  '"' + downDownSample + '"') else ""} \
      ~{true="-z" false="" zZ}
  >>>
}