version 1.0

task OmeroConfigParse {
  input {
    File fileFile
    Boolean defaultsDefaults
    Boolean rstRst
    Boolean keysKeys
    Boolean headersHeaders
    Boolean noNoWeb
  }
  command <<<
    omero config parse \
      ~{if defined(fileFile) then ("--file " +  '"' + fileFile + '"') else ""} \
      ~{true="--defaults" false="" defaultsDefaults} \
      ~{true="--rst" false="" rstRst} \
      ~{true="--keys" false="" keysKeys} \
      ~{true="--headers" false="" headersHeaders} \
      ~{true="--no-web" false="" noNoWeb}
  >>>
}