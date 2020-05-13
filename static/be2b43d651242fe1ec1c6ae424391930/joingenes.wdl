version 1.0

task Joingenes {
  input {
    String aA
    File geneGeneSets
    String outputOutput
    String prioritiesPriorities
    File inputInputFile
    String errorErrorDistance
    String geneGeneModel
    Boolean alternativesAlternatives
    String suppressSuppress
    Boolean stopStopInCoding
    Boolean noNoJoin
    Boolean noNoSelection
    Boolean onlyOnlyCompare
  }
  command <<<
    joingenes \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(geneGeneSets) then ("--genesets " +  '"' + geneGeneSets + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(prioritiesPriorities) then ("--priorities " +  '"' + prioritiesPriorities + '"') else ""} \
      ~{if defined(inputInputFile) then ("--inputfile " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(errorErrorDistance) then ("--errordistance " +  '"' + errorErrorDistance + '"') else ""} \
      ~{if defined(geneGeneModel) then ("--genemodel " +  '"' + geneGeneModel + '"') else ""} \
      ~{true="--alternatives" false="" alternativesAlternatives} \
      ~{if defined(suppressSuppress) then ("--suppress " +  '"' + suppressSuppress + '"') else ""} \
      ~{true="--stopincoding" false="" stopStopInCoding} \
      ~{true="--nojoin" false="" noNoJoin} \
      ~{true="--noselection" false="" noNoSelection} \
      ~{true="--onlycompare" false="" onlyOnlyCompare}
  >>>
}