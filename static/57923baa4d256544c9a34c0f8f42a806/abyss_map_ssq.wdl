version 1.0

task AbyssMapSsq {
  input {
    String minMinAlign
    String threadsThreads
    Boolean appendAppendComment
    String sampleSample
    Boolean dupDup
    Boolean orderOrder
    Boolean noNoOrder
    Boolean multiMulti
    Boolean noNoMulti
    Boolean ssSs
    Boolean noNoSs
    Boolean rcRc
    Boolean noNoRc
    String alphabetAlphabet
    Boolean alphaAlpha
    Boolean dnaDna
    Boolean proteinProtein
    Boolean chastityChastity
    Boolean noNoChastity
    Boolean verboseVerbose
    File dbDb
    String libraryLibrary
    String strainStrain
    String speciesSpecies
  }
  command <<<
    abyss-map-ssq \
      ~{if defined(minMinAlign) then ("--min-align " +  '"' + minMinAlign + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--append-comment" false="" appendAppendComment} \
      ~{if defined(sampleSample) then ("--sample " +  '"' + sampleSample + '"') else ""} \
      ~{true="--dup" false="" dupDup} \
      ~{true="--order" false="" orderOrder} \
      ~{true="--no-order" false="" noNoOrder} \
      ~{true="--multi" false="" multiMulti} \
      ~{true="--no-multi" false="" noNoMulti} \
      ~{true="--SS" false="" ssSs} \
      ~{true="--no-SS" false="" noNoSs} \
      ~{true="--rc" false="" rcRc} \
      ~{true="--no-rc" false="" noNoRc} \
      ~{if defined(alphabetAlphabet) then ("--alphabet " +  '"' + alphabetAlphabet + '"') else ""} \
      ~{true="--alpha" false="" alphaAlpha} \
      ~{true="--dna" false="" dnaDna} \
      ~{true="--protein" false="" proteinProtein} \
      ~{true="--chastity" false="" chastityChastity} \
      ~{true="--no-chastity" false="" noNoChastity} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(libraryLibrary) then ("--library " +  '"' + libraryLibrary + '"') else ""} \
      ~{if defined(strainStrain) then ("--strain " +  '"' + strainStrain + '"') else ""} \
      ~{if defined(speciesSpecies) then ("--species " +  '"' + speciesSpecies + '"') else ""}
  >>>
}