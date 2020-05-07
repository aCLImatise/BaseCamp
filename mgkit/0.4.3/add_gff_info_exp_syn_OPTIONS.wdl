version 1.0

task AddGffInfoExpSynOPTIONS {
  input {
    File referenceReference
    Boolean splitSplit
    Boolean progressProgress
  }
  command <<<
    add-gff-info exp_syn OPTIONS \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{true="--split" false="" splitSplit} \
      ~{true="--progress" false="" progressProgress}
  >>>
}