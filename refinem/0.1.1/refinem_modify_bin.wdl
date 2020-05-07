version 1.0

task RefinemModifyBin {
  input {
    Int minMinLen
    String addAdd
    String removeRemove
    String outlierOutlierFile
    Boolean silentSilent
    String? scaffoldScaffoldFile
    String? genomeGenomeFile
    String? outputOutputGenome
  }
  command <<<
    refinem modify_bin \
      ~{scaffoldScaffoldFile} \
      ~{if defined(minMinLen) then ("--min_len " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(addAdd) then ("--add " +  '"' + addAdd + '"') else ""} \
      ~{if defined(removeRemove) then ("--remove " +  '"' + removeRemove + '"') else ""} \
      ~{if defined(outlierOutlierFile) then ("--outlier_file " +  '"' + outlierOutlierFile + '"') else ""} \
      ~{true="--silent" false="" silentSilent} \
      ~{genomeGenomeFile} \
      ~{outputOutputGenome}
  >>>
}