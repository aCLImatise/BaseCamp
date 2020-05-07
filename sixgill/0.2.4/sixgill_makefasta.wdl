version 1.0

task SixgillMakefasta {
  input {
    String outOut
    String typeType
    String missedMissedCleavages
    Int minMinPeptideLength
    Boolean debugDebug
    String? metaMetaPeptideDbfile
  }
  command <<<
    sixgill_makefasta \
      ~{metaMetaPeptideDbfile} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(missedMissedCleavages) then ("--missedcleavages " +  '"' + missedMissedCleavages + '"') else ""} \
      ~{if defined(minMinPeptideLength) then ("--minpeptidelength " +  '"' + minMinPeptideLength + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}