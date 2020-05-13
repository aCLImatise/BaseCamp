version 1.0

task AgatSpFilterFeatureByAttributePresence.pl {
  input {
    String refRefFile
    String typeType
    Boolean attributeAttribute
    Boolean flipFlip
    String outputOutput
    String aA
    String asAs
    String theThe
    String aA
    String anAn
  }
  command <<<
    agat_sp_filter_feature_by_attribute_presence.pl \
      ~{if defined(refRefFile) then ("--reffile " +  '"' + refRefFile + '"') else ""} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{true="--attribute" false="" attributeAttribute} \
      ~{true="--flip" false="" flipFlip} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}