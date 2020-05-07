version 1.0

task EaselDownsample {
  input {
    Boolean sS
    Boolean sS
    String seedSeed
  }
  command <<<
    easel downsample \
      ~{true="-s" false="" sS} \
      ~{true="-S" false="" sS} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""}
  >>>
}