version 1.0

task HifiveFends {
  input {
    String fendFend
    String bedBed
    Int lengthLength
    String binnedBinned
    String reRe
    String genomeGenome
    Boolean quietQuiet
    String? outputOutput
  }
  command <<<
    hifive fends \
      ~{outputOutput} \
      ~{if defined(fendFend) then ("--fend " +  '"' + fendFend + '"') else ""} \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{if defined(binnedBinned) then ("--binned " +  '"' + binnedBinned + '"') else ""} \
      ~{if defined(reRe) then ("--re " +  '"' + reRe + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}