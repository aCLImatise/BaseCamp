version 1.0

task MarginConsMedaka {
  input {
    String depthDepth
    String qualityQuality
    String maskedMasked
  }
  command <<<
    margin_cons_medaka \
      ~{if defined(depthDepth) then ("--depth " +  '"' + depthDepth + '"') else ""} \
      ~{if defined(qualityQuality) then ("--quality " +  '"' + qualityQuality + '"') else ""} \
      ~{if defined(maskedMasked) then ("--masked " +  '"' + maskedMasked + '"') else ""}
  >>>
}