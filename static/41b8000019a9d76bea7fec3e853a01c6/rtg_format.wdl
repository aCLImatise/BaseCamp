version 1.0

task RtgFormat {
  input {
    Boolean dusterDuster
    String excludeExclude
    String selectSelectReadGroup
    Int trimTrimThreshold
    Boolean allowAllowDuplicateNames
    Boolean noNoNames
    Boolean noNoQuality
    String samSamRg
  }
  command <<<
    rtg format \
      ~{true="--duster" false="" dusterDuster} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{if defined(selectSelectReadGroup) then ("--select-read-group " +  '"' + selectSelectReadGroup + '"') else ""} \
      ~{if defined(trimTrimThreshold) then ("--trim-threshold " +  '"' + trimTrimThreshold + '"') else ""} \
      ~{true="--allow-duplicate-names" false="" allowAllowDuplicateNames} \
      ~{true="--no-names" false="" noNoNames} \
      ~{true="--no-quality" false="" noNoQuality} \
      ~{if defined(samSamRg) then ("--sam-rg " +  '"' + samSamRg + '"') else ""}
  >>>
}