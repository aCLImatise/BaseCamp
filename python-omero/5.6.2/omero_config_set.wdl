version 1.0

task OmeroConfigSet {
  input {
    Boolean reportReport
    File fileFile
    String? keyKey
    String? valueValue
  }
  command <<<
    omero config set \
      ~{keyKey} \
      ~{true="--report" false="" reportReport} \
      ~{if defined(fileFile) then ("--file " +  '"' + fileFile + '"') else ""} \
      ~{valueValue}
  >>>
}