version 1.0

task Hapbinconv {
  input {
    Boolean hapHap
    Boolean outOut
  }
  command <<<
    hapbinconv \
      ~{true="--hap" false="" hapHap} \
      ~{true="--out" false="" outOut}
  >>>
}