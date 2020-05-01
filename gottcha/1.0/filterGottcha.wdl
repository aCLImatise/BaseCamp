version 1.0

task FilterGottcha.pl {
  input {
    String strainStrainLookup
    String speciesSpeciesLookup
    String genusGenusLookup
    String familyFamilyLookup
    String orderOrderLookup
    String classClassLookup
    String phylumPhylumLookup
    String taxTaxLookup
    String taxTaxLevel
    String dirDir
    String prefixPrefix
    Boolean methodMethod
    Boolean fieldField
    Boolean minMinLen
    Boolean minMinCov
    Boolean minMinHits
    Boolean minMinMlHl
    Boolean cCCov
  }
  command <<<
    filterGottcha.pl \
      ~{if defined(strainStrainLookup) then ("--strainLookup " +  '"' + strainStrainLookup + '"') else ""} \
      ~{if defined(speciesSpeciesLookup) then ("--speciesLookup " +  '"' + speciesSpeciesLookup + '"') else ""} \
      ~{if defined(genusGenusLookup) then ("--genusLookup " +  '"' + genusGenusLookup + '"') else ""} \
      ~{if defined(familyFamilyLookup) then ("--familyLookup " +  '"' + familyFamilyLookup + '"') else ""} \
      ~{if defined(orderOrderLookup) then ("--orderLookup " +  '"' + orderOrderLookup + '"') else ""} \
      ~{if defined(classClassLookup) then ("--classLookup " +  '"' + classClassLookup + '"') else ""} \
      ~{if defined(phylumPhylumLookup) then ("--phylumLookup " +  '"' + phylumPhylumLookup + '"') else ""} \
      ~{if defined(taxTaxLookup) then ("--taxLookup " +  '"' + taxTaxLookup + '"') else ""} \
      ~{if defined(taxTaxLevel) then ("--taxLevel " +  '"' + taxTaxLevel + '"') else ""} \
      ~{if defined(dirDir) then ("--dir " +  '"' + dirDir + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--method" false="" methodMethod} \
      ~{true="--field" false="" fieldField} \
      ~{true="--minLen" false="" minMinLen} \
      ~{true="--minCov" false="" minMinCov} \
      ~{true="--minHits" false="" minMinHits} \
      ~{true="--minMLHL" false="" minMinMlHl} \
      ~{true="--cCov" false="" cCCov}
  >>>
}