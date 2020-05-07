version 1.0

task NormalizeMulticov.pl {
  input {
    Boolean iI
    Boolean readReadLength
    Boolean outOut
    Boolean typeType
    Boolean manMan
  }
  command <<<
    normalize_multicov.pl \
      ~{true="-i" false="" iI} \
      ~{true="--readlength" false="" readReadLength} \
      ~{true="--out" false="" outOut} \
      ~{true="--type" false="" typeType} \
      ~{true="--man" false="" manMan}
  >>>
}