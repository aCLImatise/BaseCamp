version 1.0

task CheckSortOrder {
  input {
    String genomeGenome
    File? pathPath
  }
  command <<<
    check-sort-order \
      ~{pathPath} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""}
  >>>
}