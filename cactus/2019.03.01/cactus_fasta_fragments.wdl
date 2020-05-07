version 1.0

task CactusFastaFragments.py {
  input {
    Int fragmentFragment
    Int stepStep
    Boolean shuffleShuffle
    String originOrigin
    String originOrigin
    String headHead
  }
  command <<<
    cactus_fasta_fragments.py \
      ~{if defined(fragmentFragment) then ("--fragment " +  '"' + fragmentFragment + '"') else ""} \
      ~{if defined(stepStep) then ("--step " +  '"' + stepStep + '"') else ""} \
      ~{true="--shuffle" false="" shuffleShuffle} \
      ~{if defined(originOrigin) then ("--origin " +  '"' + originOrigin + '"') else ""} \
      ~{if defined(originOrigin) then ("--origin " +  '"' + originOrigin + '"') else ""} \
      ~{if defined(headHead) then ("--head " +  '"' + headHead + '"') else ""}
  >>>
}