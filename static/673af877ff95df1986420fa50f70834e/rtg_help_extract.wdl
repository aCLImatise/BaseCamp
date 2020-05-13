version 1.0

task RtgHelpExtract {
  input {
    Boolean headerHeader
    String headerHeaderOnly
    File? fileFile
  }
  command <<<
    rtg help extract \
      ~{fileFile} \
      ~{true="--header" false="" headerHeader} \
      ~{if defined(headerHeaderOnly) then ("--header-only " +  '"' + headerHeaderOnly + '"') else ""}
  >>>
}