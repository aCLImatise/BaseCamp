version 1.0

task VcfIsec {
  input {
    Boolean applyApplyFilters
    Boolean complementComplement
    Boolean debugDebug
    Boolean forceForce
    Boolean oneOneFileOnly
    Boolean nNFiles
    File prefixPrefix
    Boolean regionsRegions
    Boolean tabTab
    Int winWin
    String? optionsOptions
    File? fileFile1vcf
    String? optionsOptions
  }
  command <<<
    vcf-isec \
      ~{optionsOptions} \
      ~{true="--apply-filters" false="" applyApplyFilters} \
      ~{true="--complement" false="" complementComplement} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--force" false="" forceForce} \
      ~{true="--one-file-only" false="" oneOneFileOnly} \
      ~{true="--nfiles" false="" nNFiles} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--regions" false="" regionsRegions} \
      ~{true="--tab" false="" tabTab} \
      ~{if defined(winWin) then ("--win " +  '"' + winWin + '"') else ""} \
      ~{fileFile1vcf} \
      ~{optionsOptions}
  >>>
}