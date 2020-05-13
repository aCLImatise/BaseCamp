version 1.0

task Ecitmatch {
  input {
    Boolean journalJournal
    Boolean yearYear
    Boolean volumeVolume
    Boolean pagePage
    Boolean authorAuthor
  }
  command <<<
    ecitmatch \
      ~{true="-journal" false="" journalJournal} \
      ~{true="-year" false="" yearYear} \
      ~{true="-volume" false="" volumeVolume} \
      ~{true="-page" false="" pagePage} \
      ~{true="-author" false="" authorAuthor}
  >>>
}