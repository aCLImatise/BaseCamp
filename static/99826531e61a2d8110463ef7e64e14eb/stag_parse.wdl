version 1.0

task StagParse.pl {
  input {
    Boolean rR
    Boolean colorColor
  }
  command <<<
    stag-parse.pl \
      ~{true="-r" false="" rR} \
      ~{true="-color" false="" colorColor}
  >>>
}