version 1.0

task GetGffInfoSequence {
  input {
    Boolean reverseReverse
    Boolean noNoWrap
    Boolean splitSplit
    File referenceReference
    Boolean progressProgress
  }
  command <<<
    get-gff-info sequence \
      ~{true="--reverse" false="" reverseReverse} \
      ~{true="--no-wrap" false="" noNoWrap} \
      ~{true="--split" false="" splitSplit} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{true="--progress" false="" progressProgress}
  >>>
}