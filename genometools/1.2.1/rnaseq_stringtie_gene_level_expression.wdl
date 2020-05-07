version 1.0

task RnaseqStringtieGeneLevelExpression.py {
  input {
    File stringStringTieFile
    File geneGeneFile
    Boolean noNoNovelTranscripts
    File outputOutputFile
    File logLogFile
    Boolean quietQuiet
    Boolean verboseVerbose
    String? extractsExtracts
    String? geneGeneLevel
    String? expressionExpression
    String? dataData
    String? fromFrom
    String? stringStringTie
    String? outputOutput
  }
  command <<<
    rnaseq_stringtie_gene_level_expression.py \
      ~{extractsExtracts} \
      ~{if defined(stringStringTieFile) then ("--stringtie-file " +  '"' + stringStringTieFile + '"') else ""} \
      ~{if defined(geneGeneFile) then ("--gene-file " +  '"' + geneGeneFile + '"') else ""} \
      ~{true="--no-novel-transcripts" false="" noNoNovelTranscripts} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{geneGeneLevel} \
      ~{expressionExpression} \
      ~{dataData} \
      ~{fromFrom} \
      ~{stringStringTie} \
      ~{outputOutput}
  >>>
}