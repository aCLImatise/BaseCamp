version 1.0

task UnitigCaller {
  input {
    Boolean indexIndex
    Boolean callCall
    Boolean simpleSimple
    String strainsStrains
    String unitUnitIgs
    String outputOutput
    Boolean noNoSaveIdx
    String mantisMantisIndex
    Boolean approximateApproximate
    String kmKmErSize
    String countCountCutOff
    String logLogSlots
    String cpusCpus
    Boolean overwriteOverwrite
    String squeakSqueakR
    String mantisMantis
  }
  command <<<
    unitig_caller \
      ~{true="--index" false="" indexIndex} \
      ~{true="--call" false="" callCall} \
      ~{true="--simple" false="" simpleSimple} \
      ~{if defined(strainsStrains) then ("--strains " +  '"' + strainsStrains + '"') else ""} \
      ~{if defined(unitUnitIgs) then ("--unitigs " +  '"' + unitUnitIgs + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--no-save-idx" false="" noNoSaveIdx} \
      ~{if defined(mantisMantisIndex) then ("--mantis-index " +  '"' + mantisMantisIndex + '"') else ""} \
      ~{true="--approximate" false="" approximateApproximate} \
      ~{if defined(kmKmErSize) then ("--kmer-size " +  '"' + kmKmErSize + '"') else ""} \
      ~{if defined(countCountCutOff) then ("--count-cutoff " +  '"' + countCountCutOff + '"') else ""} \
      ~{if defined(logLogSlots) then ("--log-slots " +  '"' + logLogSlots + '"') else ""} \
      ~{if defined(cpusCpus) then ("--cpus " +  '"' + cpusCpus + '"') else ""} \
      ~{true="--overwrite" false="" overwriteOverwrite} \
      ~{if defined(squeakSqueakR) then ("--squeakr " +  '"' + squeakSqueakR + '"') else ""} \
      ~{if defined(mantisMantis) then ("--mantis " +  '"' + mantisMantis + '"') else ""}
  >>>
}