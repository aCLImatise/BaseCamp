version 1.0

task RtgExtract {
  input {
    Boolean headerHeader
    String headerHeaderOnly
    File? fileFile
  }
  command <<<
    rtg extract \
      ~{fileFile} \
      ~{true="--header" false="" headerHeader} \
      ~{if defined(headerHeaderOnly) then ("--header-only " +  '"' + headerHeaderOnly + '"') else ""}
  >>>
}