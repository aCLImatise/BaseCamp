version 1.0

task RbtBamDepth {
  input {
    Int exclExclFlags
    Int inclInclFlags
    Int mM
    Int minMinMapq
    String? optionsOptions
    String? bamBamPath
  }
  command <<<
    rbt bam-depth \
      ~{optionsOptions} \
      ~{if defined(exclExclFlags) then ("--excl-flags " +  '"' + exclExclFlags + '"') else ""} \
      ~{if defined(inclInclFlags) then ("--incl-flags " +  '"' + inclInclFlags + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(minMinMapq) then ("--min-mapq " +  '"' + minMinMapq + '"') else ""} \
      ~{bamBamPath}
  >>>
}