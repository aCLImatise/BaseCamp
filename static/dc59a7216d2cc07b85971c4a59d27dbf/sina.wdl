version 1.0

task Sina {
  input {
    Boolean hH
    Boolean iI
    Boolean oO
    String addAddRelatives
    Boolean sS
    Boolean pP
    Boolean pP
    String numNumPts
    Boolean vV
    Boolean vV
    Boolean qQ
    String logLogFile
    String metaMetaFmt
    Boolean rR
    Boolean tT
    String fsFsEngine
    String fsFsKmErLen
    String fsFsReq
    String fsFsMin
    String fsFsMax
    String fsFsMsc
    String fsFsReqFull
    String fsFsFullLen
    String fsFsReqGaps
    String fsFsMinLen
    String searchSearchDb
    String searchSearchEngine
    String searchSearchMinSim
    String searchSearchMaxResult
    String lcaLcaFields
    String lcaLcaQuorum
  }
  command <<<
    sina \
      ~{true="-H" false="" hH} \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{if defined(addAddRelatives) then ("--add-relatives " +  '"' + addAddRelatives + '"') else ""} \
      ~{true="-S" false="" sS} \
      ~{true="-P" false="" pP} \
      ~{true="-p" false="" pP} \
      ~{if defined(numNumPts) then ("--num-pts " +  '"' + numNumPts + '"') else ""} \
      ~{true="-V" false="" vV} \
      ~{true="-v" false="" vV} \
      ~{true="-q" false="" qQ} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(metaMetaFmt) then ("--meta-fmt " +  '"' + metaMetaFmt + '"') else ""} \
      ~{true="-r" false="" rR} \
      ~{true="-t" false="" tT} \
      ~{if defined(fsFsEngine) then ("--fs-engine " +  '"' + fsFsEngine + '"') else ""} \
      ~{if defined(fsFsKmErLen) then ("--fs-kmer-len " +  '"' + fsFsKmErLen + '"') else ""} \
      ~{if defined(fsFsReq) then ("--fs-req " +  '"' + fsFsReq + '"') else ""} \
      ~{if defined(fsFsMin) then ("--fs-min " +  '"' + fsFsMin + '"') else ""} \
      ~{if defined(fsFsMax) then ("--fs-max " +  '"' + fsFsMax + '"') else ""} \
      ~{if defined(fsFsMsc) then ("--fs-msc " +  '"' + fsFsMsc + '"') else ""} \
      ~{if defined(fsFsReqFull) then ("--fs-req-full " +  '"' + fsFsReqFull + '"') else ""} \
      ~{if defined(fsFsFullLen) then ("--fs-full-len " +  '"' + fsFsFullLen + '"') else ""} \
      ~{if defined(fsFsReqGaps) then ("--fs-req-gaps " +  '"' + fsFsReqGaps + '"') else ""} \
      ~{if defined(fsFsMinLen) then ("--fs-min-len " +  '"' + fsFsMinLen + '"') else ""} \
      ~{if defined(searchSearchDb) then ("--search-db " +  '"' + searchSearchDb + '"') else ""} \
      ~{if defined(searchSearchEngine) then ("--search-engine " +  '"' + searchSearchEngine + '"') else ""} \
      ~{if defined(searchSearchMinSim) then ("--search-min-sim " +  '"' + searchSearchMinSim + '"') else ""} \
      ~{if defined(searchSearchMaxResult) then ("--search-max-result " +  '"' + searchSearchMaxResult + '"') else ""} \
      ~{if defined(lcaLcaFields) then ("--lca-fields " +  '"' + lcaLcaFields + '"') else ""} \
      ~{if defined(lcaLcaQuorum) then ("--lca-quorum " +  '"' + lcaLcaQuorum + '"') else ""}
  >>>
}