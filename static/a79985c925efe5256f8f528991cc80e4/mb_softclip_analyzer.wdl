version 1.0

task MbSoftclipAnalyzer {
  input {
    String topTopN
    String? bamBamFile
    String? outputOutputDir
  }
  command <<<
    mb-softclip-analyzer \
      ~{bamBamFile} \
      ~{if defined(topTopN) then ("--top_n " +  '"' + topTopN + '"') else ""} \
      ~{outputOutputDir}
  >>>
}