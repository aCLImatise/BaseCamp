version 1.0

task BrPmfetch.rb {
  input {
    Boolean queryQuery
    Boolean titleTitle
    Boolean journalJournal
    Boolean volumeVolume
    Boolean issueIssue
    Boolean pagePage
    Boolean authorAuthor
    Boolean meshMesh
    String formatFormat
    Boolean pmidPmidList
    Boolean retRetMax
    Boolean retRetStart
    String sortSort
    Boolean relRelDate
    String minMinDate
    String maxdateMaxdate
    Boolean examplesExamples
  }
  command <<<
    br_pmfetch.rb \
      ~{true="--query" false="" queryQuery} \
      ~{true="--title" false="" titleTitle} \
      ~{true="--journal" false="" journalJournal} \
      ~{true="--volume" false="" volumeVolume} \
      ~{true="--issue" false="" issueIssue} \
      ~{true="--page" false="" pagePage} \
      ~{true="--author" false="" authorAuthor} \
      ~{true="--mesh" false="" meshMesh} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{true="--pmidlist" false="" pmidPmidList} \
      ~{true="--retmax" false="" retRetMax} \
      ~{true="--retstart" false="" retRetStart} \
      ~{if defined(sortSort) then ("--sort " +  '"' + sortSort + '"') else ""} \
      ~{true="--reldate" false="" relRelDate} \
      ~{if defined(minMinDate) then ("--mindate " +  '"' + minMinDate + '"') else ""} \
      ~{if defined(maxdateMaxdate) then ("--maxdate " +  '"' + maxdateMaxdate + '"') else ""} \
      ~{true="--examples" false="" examplesExamples}
  >>>
}