version 1.0

task MafIntervalAlignibility.py {
  input {
    String speciesSpecies
    String prefixPrefix
    Boolean useUseCache
  }
  command <<<
    maf_interval_alignibility.py \
      ~{if defined(speciesSpecies) then ("--species " +  '"' + speciesSpecies + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--usecache" false="" useUseCache}
  >>>
}