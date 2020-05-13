version 1.0

task CbGuessGencode {
  input {
    Boolean debugDebug
    File? filenameFilename
    String? versionVersion
    String? ofOf
    String? aA
    String? listList
    String? ofOf
    String? geneGene
    String? idsIds
    String? readsReads
    String? theThe
    String? firstFirst
    String? tabTabSep
    String? fieldField
    String? fromFrom
    File? filenameFilename
    String? andAnd
    String? reportsReports
    String? bestBest
    String? genGenCode
    String? versionVersion
  }
  command <<<
    cbGuessGencode \
      ~{filenameFilename} \
      ~{true="--debug" false="" debugDebug} \
      ~{versionVersion} \
      ~{ofOf} \
      ~{aA} \
      ~{listList} \
      ~{ofOf} \
      ~{geneGene} \
      ~{idsIds} \
      ~{readsReads} \
      ~{theThe} \
      ~{firstFirst} \
      ~{tabTabSep} \
      ~{fieldField} \
      ~{fromFrom} \
      ~{filenameFilename} \
      ~{andAnd} \
      ~{reportsReports} \
      ~{bestBest} \
      ~{genGenCode} \
      ~{versionVersion}
  >>>
}