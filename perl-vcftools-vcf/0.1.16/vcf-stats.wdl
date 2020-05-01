version 1.0

task VcfStats {
  input {
    File dumpDump
    Boolean filtersFilters
    Boolean prefixPrefix
    String samplesSamples
    String? optionsOptions
    File? fileFileVcfGz
  }
  command <<<
    vcf-stats \
      ~{optionsOptions} \
      ~{if defined(dumpDump) then ("--dump " +  '"' + dumpDump + '"') else ""} \
      ~{true="--filters" false="" filtersFilters} \
      ~{true="--prefix" false="" prefixPrefix} \
      ~{if defined(samplesSamples) then ("--samples " +  '"' + samplesSamples + '"') else ""} \
      ~{fileFileVcfGz}
  >>>
}