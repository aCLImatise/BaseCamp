version 1.0

task FilterGffOverlap {
  input {
    Int sizeSize
    Boolean sortedSorted
    String chooseChooseFunc
    Boolean sortSortAttr
    Boolean progressProgress
  }
  command <<<
    filter-gff overlap \
      ~{if defined(sizeSize) then ("--size " +  '"' + sizeSize + '"') else ""} \
      ~{true="--sorted" false="" sortedSorted} \
      ~{if defined(chooseChooseFunc) then ("--choose-func " +  '"' + chooseChooseFunc + '"') else ""} \
      ~{true="--sort-attr" false="" sortSortAttr} \
      ~{true="--progress" false="" progressProgress}
  >>>
}