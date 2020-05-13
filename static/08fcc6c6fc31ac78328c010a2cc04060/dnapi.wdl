version 1.0

task Dnapi.py {
  input {
    Boolean kK
    Boolean rR
    Boolean showShowAll
    String mapMapCommand
    Float subsampleSubsampleRate
    Directory outputOutputDir
    Boolean noNoOutputFiles
    Directory tempTempDir
    Array[String]+ adapterAdapterSeq
    Int prefixPrefixMatch
    Int minMinLen
    Int maxMaxLen
    Int trimTrim5p
    Int trimTrim3p
    String? fastFastQ
  }
  command <<<
    dnapi.py \
      ~{fastFastQ} \
      ~{true="-k" false="" kK} \
      ~{true="-r" false="" rR} \
      ~{true="--show-all" false="" showShowAll} \
      ~{if defined(mapMapCommand) then ("--map-command " +  '"' + mapMapCommand + '"') else ""} \
      ~{if defined(subsampleSubsampleRate) then ("--subsample-rate " +  '"' + subsampleSubsampleRate + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{true="--no-output-files" false="" noNoOutputFiles} \
      ~{if defined(tempTempDir) then ("--temp-dir " +  '"' + tempTempDir + '"') else ""} \
      ~{if defined(adapterAdapterSeq) then ("--adapter-seq " +  '"' + adapterAdapterSeq + '"') else ""} \
      ~{if defined(prefixPrefixMatch) then ("--prefix-match " +  '"' + prefixPrefixMatch + '"') else ""} \
      ~{if defined(minMinLen) then ("--min-len " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(maxMaxLen) then ("--max-len " +  '"' + maxMaxLen + '"') else ""} \
      ~{if defined(trimTrim5p) then ("--trim-5p " +  '"' + trimTrim5p + '"') else ""} \
      ~{if defined(trimTrim3p) then ("--trim-3p " +  '"' + trimTrim3p + '"') else ""}
  >>>
}