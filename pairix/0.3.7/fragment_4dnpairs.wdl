version 1.0

task Fragment4dnpairs.pl {
  input {
    Boolean allowAllowReplacement
  }
  command <<<
    fragment_4dnpairs.pl \
      ~{true="--allow-replacement" false="" allowAllowReplacement}
  >>>
}