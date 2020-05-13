version 1.0

task Datamash {
  input {
    Boolean fullFull
    String groupGroup
    Boolean headerHeaderIn
    Boolean headerHeaderOut
    Boolean headersHeaders
    Boolean ignoreIgnoreCase
    Boolean sortSort
    Boolean noNoStrict
    String fillerFiller
    String fieldFieldSeparator
    Boolean narmNarm
    Boolean whitespaceWhitespace
    Boolean zeroZeroTerminated
  }
  command <<<
    datamash \
      ~{true="--full" false="" fullFull} \
      ~{if defined(groupGroup) then ("--group " +  '"' + groupGroup + '"') else ""} \
      ~{true="--header-in" false="" headerHeaderIn} \
      ~{true="--header-out" false="" headerHeaderOut} \
      ~{true="--headers" false="" headersHeaders} \
      ~{true="--ignore-case" false="" ignoreIgnoreCase} \
      ~{true="--sort" false="" sortSort} \
      ~{true="--no-strict" false="" noNoStrict} \
      ~{if defined(fillerFiller) then ("--filler " +  '"' + fillerFiller + '"') else ""} \
      ~{if defined(fieldFieldSeparator) then ("--field-separator " +  '"' + fieldFieldSeparator + '"') else ""} \
      ~{true="--narm" false="" narmNarm} \
      ~{true="--whitespace" false="" whitespaceWhitespace} \
      ~{true="--zero-terminated" false="" zeroZeroTerminated}
  >>>
}