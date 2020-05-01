version 1.0

task GvcfRegions.py {
  input {
    Boolean unreportedUnreportedIsCalled
    Array[String]+ ignoreIgnorePhrases
    Int minMinGq
    Int minMinQual
    Array[String]+ passPassPhrases
    String gvcGvcFType
    String? gvcGvcF
  }
  command <<<
    gvcf_regions.py \
      ~{gvcGvcF} \
      ~{true="--unreported_is_called" false="" unreportedUnreportedIsCalled} \
      ~{if defined(ignoreIgnorePhrases) then ("--ignore_phrases " +  '"' + ignoreIgnorePhrases + '"') else ""} \
      ~{if defined(minMinGq) then ("--min_GQ " +  '"' + minMinGq + '"') else ""} \
      ~{if defined(minMinQual) then ("--min_QUAL " +  '"' + minMinQual + '"') else ""} \
      ~{if defined(passPassPhrases) then ("--pass_phrases " +  '"' + passPassPhrases + '"') else ""} \
      ~{if defined(gvcGvcFType) then ("--gvcf_type " +  '"' + gvcGvcFType + '"') else ""}
  >>>
}