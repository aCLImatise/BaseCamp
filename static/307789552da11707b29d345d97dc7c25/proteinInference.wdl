version 1.0

task ProteinInference.py {
  input {
    String enzymeEnzymePattern
    Int minMin
    Int maxMax
    Boolean iIBaq
    String precursorsPrecursors
    String iIBaqFunction
    Boolean nonNonRedundant
    Boolean normalizeNormalize
    Boolean uniqueUniqueOnly
    Boolean positionPosition
    Boolean caseCaseSensitive
    Boolean modModOut
    Boolean modificationModificationSite
    String modModCol
    String modModColFunc
  }
  command <<<
    proteinInference.py \
      ~{if defined(enzymeEnzymePattern) then ("--enzyme-pattern " +  '"' + enzymeEnzymePattern + '"') else ""} \
      ~{if defined(minMin) then ("--min " +  '"' + minMin + '"') else ""} \
      ~{if defined(maxMax) then ("--max " +  '"' + maxMax + '"') else ""} \
      ~{true="--ibaq" false="" iIBaq} \
      ~{if defined(precursorsPrecursors) then ("--precursors " +  '"' + precursorsPrecursors + '"') else ""} \
      ~{if defined(iIBaqFunction) then ("--ibaq-function " +  '"' + iIBaqFunction + '"') else ""} \
      ~{true="--non-redundant" false="" nonNonRedundant} \
      ~{true="--normalize" false="" normalizeNormalize} \
      ~{true="--unique-only" false="" uniqueUniqueOnly} \
      ~{true="--position" false="" positionPosition} \
      ~{true="--case-sensitive" false="" caseCaseSensitive} \
      ~{true="--mod-out" false="" modModOut} \
      ~{true="--modification-site" false="" modificationModificationSite} \
      ~{if defined(modModCol) then ("--mod-col " +  '"' + modModCol + '"') else ""} \
      ~{if defined(modModColFunc) then ("--mod-col-func " +  '"' + modModColFunc + '"') else ""}
  >>>
}