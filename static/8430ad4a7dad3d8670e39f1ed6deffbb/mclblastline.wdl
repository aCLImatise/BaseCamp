version 1.0

task Mclblastline {
  input {
    Boolean whatWhatIf
    Boolean startStartAssemble
    Boolean startStartMcl
    Boolean startStartFormat
    Boolean preparePrepareMcl
    String parserParser
    String parserParserTag
    String assAssRepeat
    Boolean assAssNoMap
    Boolean assAss
    String startStartAssemble
    String mclMclTe
    Float mclMclI
    Float mclMclI
    Int mclMclL
    Float mclMclPi
    Float mclMclC
    String mclMclScheme
    String mclMclO
    Boolean mclMcl
    File startStartMcl
    String fmtFmtLumpSize
    String fmtFmtLumpCount
    Boolean fmtFmtNotAb
    String fmtFmtTab
    Boolean fmtFmt
  }
  command <<<
    mclblastline \
      ~{true="--whatif" false="" whatWhatIf} \
      ~{true="--start-assemble" false="" startStartAssemble} \
      ~{true="--start-mcl" false="" startStartMcl} \
      ~{true="--start-format" false="" startStartFormat} \
      ~{true="--prepare-mcl" false="" preparePrepareMcl} \
      ~{if defined(parserParser) then ("--parser " +  '"' + parserParser + '"') else ""} \
      ~{if defined(parserParserTag) then ("--parser-tag " +  '"' + parserParserTag + '"') else ""} \
      ~{if defined(assAssRepeat) then ("--ass-repeat " +  '"' + assAssRepeat + '"') else ""} \
      ~{true="--ass-nomap" false="" assAssNoMap} \
      ~{true="--ass" false="" assAss} \
      ~{if defined(startStartAssemble) then ("--start-assemble " +  '"' + startStartAssemble + '"') else ""} \
      ~{if defined(mclMclTe) then ("--mcl-te " +  '"' + mclMclTe + '"') else ""} \
      ~{if defined(mclMclI) then ("--mcl-I " +  '"' + mclMclI + '"') else ""} \
      ~{if defined(mclMclI) then ("--mcl-i " +  '"' + mclMclI + '"') else ""} \
      ~{if defined(mclMclL) then ("--mcl-l " +  '"' + mclMclL + '"') else ""} \
      ~{if defined(mclMclPi) then ("--mcl-pi " +  '"' + mclMclPi + '"') else ""} \
      ~{if defined(mclMclC) then ("--mcl-c " +  '"' + mclMclC + '"') else ""} \
      ~{if defined(mclMclScheme) then ("--mcl-scheme " +  '"' + mclMclScheme + '"') else ""} \
      ~{if defined(mclMclO) then ("--mcl-o " +  '"' + mclMclO + '"') else ""} \
      ~{true="--mcl" false="" mclMcl} \
      ~{if defined(startStartMcl) then ("--start-mcl " +  '"' + startStartMcl + '"') else ""} \
      ~{if defined(fmtFmtLumpSize) then ("--fmt-lump-size " +  '"' + fmtFmtLumpSize + '"') else ""} \
      ~{if defined(fmtFmtLumpCount) then ("--fmt-lump-count " +  '"' + fmtFmtLumpCount + '"') else ""} \
      ~{true="--fmt-notab" false="" fmtFmtNotAb} \
      ~{if defined(fmtFmtTab) then ("--fmt-tab " +  '"' + fmtFmtTab + '"') else ""} \
      ~{true="--fmt" false="" fmtFmt}
  >>>
}