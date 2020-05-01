version 1.0

task CsbPrecision {
  input {
    String pdbPdb
    String nativeNative
    String chainChain
    String topTop
    String cpuCpu
    String rmsdRmsd
    String outputOutput
    Boolean saveSaveStructures
    String? libraryLibrary
  }
  command <<<
    csb-precision \
      ~{libraryLibrary} \
      ~{if defined(pdbPdb) then ("--pdb " +  '"' + pdbPdb + '"') else ""} \
      ~{if defined(nativeNative) then ("--native " +  '"' + nativeNative + '"') else ""} \
      ~{if defined(chainChain) then ("--chain " +  '"' + chainChain + '"') else ""} \
      ~{if defined(topTop) then ("--top " +  '"' + topTop + '"') else ""} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""} \
      ~{if defined(rmsdRmsd) then ("--rmsd " +  '"' + rmsdRmsd + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--save-structures" false="" saveSaveStructures}
  >>>
}