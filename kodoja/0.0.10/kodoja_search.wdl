version 1.0

task KodojaSearch.py {
  input {
    String outputOutputDir
    String krakenKrakenDb
    String kaijuKaijuDb
    String readRead1
    String readRead2
    String dataDataFormat
    String threadsThreads
    String hostHostSubset
    String trimTrimMinLen
    String trimTrimAdapt
    String krakenKrakenQuick
    Boolean krakenKrakenPreload
    String kaijuKaijuScore
    String kaijuKaijuMinLen
    String kaijuKaijuMismatch
  }
  command <<<
    kodoja_search.py \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(krakenKrakenDb) then ("--kraken_db " +  '"' + krakenKrakenDb + '"') else ""} \
      ~{if defined(kaijuKaijuDb) then ("--kaiju_db " +  '"' + kaijuKaijuDb + '"') else ""} \
      ~{if defined(readRead1) then ("--read1 " +  '"' + readRead1 + '"') else ""} \
      ~{if defined(readRead2) then ("--read2 " +  '"' + readRead2 + '"') else ""} \
      ~{if defined(dataDataFormat) then ("--data_format " +  '"' + dataDataFormat + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(hostHostSubset) then ("--host_subset " +  '"' + hostHostSubset + '"') else ""} \
      ~{if defined(trimTrimMinLen) then ("--trim_minlen " +  '"' + trimTrimMinLen + '"') else ""} \
      ~{if defined(trimTrimAdapt) then ("--trim_adapt " +  '"' + trimTrimAdapt + '"') else ""} \
      ~{if defined(krakenKrakenQuick) then ("--kraken_quick " +  '"' + krakenKrakenQuick + '"') else ""} \
      ~{true="--kraken_preload" false="" krakenKrakenPreload} \
      ~{if defined(kaijuKaijuScore) then ("--kaiju_score " +  '"' + kaijuKaijuScore + '"') else ""} \
      ~{if defined(kaijuKaijuMinLen) then ("--kaiju_minlen " +  '"' + kaijuKaijuMinLen + '"') else ""} \
      ~{if defined(kaijuKaijuMismatch) then ("--kaiju_mismatch " +  '"' + kaijuKaijuMismatch + '"') else ""}
  >>>
}