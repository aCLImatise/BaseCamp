version 1.0

task MafCount.py {
  input {
    Boolean colsCols
    Boolean basesBases
    String skipSkip
    Boolean eachEach
    String refRef
  }
  command <<<
    maf_count.py \
      ~{true="--cols" false="" colsCols} \
      ~{true="--bases" false="" basesBases} \
      ~{if defined(skipSkip) then ("--skip " +  '"' + skipSkip + '"') else ""} \
      ~{true="--each" false="" eachEach} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""}
  >>>
}