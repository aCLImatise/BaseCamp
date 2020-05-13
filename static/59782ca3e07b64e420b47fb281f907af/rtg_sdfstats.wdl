version 1.0

task RtgSdfstats {
  input {
    Boolean lengthsLengths
    String positionPosition
    Boolean qualityQuality
    String sexSex
    String taxonomyTaxonomy
    String unknownsUnknowns
  }
  command <<<
    rtg sdfstats \
      ~{true="--lengths" false="" lengthsLengths} \
      ~{if defined(positionPosition) then ("--position " +  '"' + positionPosition + '"') else ""} \
      ~{true="--quality" false="" qualityQuality} \
      ~{if defined(sexSex) then ("--sex " +  '"' + sexSex + '"') else ""} \
      ~{if defined(taxonomyTaxonomy) then ("--taxonomy " +  '"' + taxonomyTaxonomy + '"') else ""} \
      ~{if defined(unknownsUnknowns) then ("--unknowns " +  '"' + unknownsUnknowns + '"') else ""}
  >>>
}