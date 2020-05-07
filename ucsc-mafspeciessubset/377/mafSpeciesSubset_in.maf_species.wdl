version 1.0

task MafSpeciesSubsetIn.mafSpecies.lst {
  input {
    String? outOutMaf
  }
  command <<<
    mafSpeciesSubset in.maf species.lst \
      ~{outOutMaf}
  >>>
}