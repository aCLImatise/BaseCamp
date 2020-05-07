version 1.0

task BamtoolsSplit {
  input {
    String inIn
    String refRefPrefix
    String tagTagPrefix
    File stubStub
    String taglistTaglistDelim
    Boolean mappedMapped
    Boolean pairedPaired
    Boolean referenceReference
    String tagTag
  }
  command <<<
    bamtools split \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(refRefPrefix) then ("-refPrefix " +  '"' + refRefPrefix + '"') else ""} \
      ~{if defined(tagTagPrefix) then ("-tagPrefix " +  '"' + tagTagPrefix + '"') else ""} \
      ~{if defined(stubStub) then ("-stub " +  '"' + stubStub + '"') else ""} \
      ~{if defined(taglistTaglistDelim) then ("-tagListDelim " +  '"' + taglistTaglistDelim + '"') else ""} \
      ~{true="-mapped" false="" mappedMapped} \
      ~{true="-paired" false="" pairedPaired} \
      ~{true="-reference" false="" referenceReference} \
      ~{if defined(tagTag) then ("-tag " +  '"' + tagTag + '"') else ""}
  >>>
}