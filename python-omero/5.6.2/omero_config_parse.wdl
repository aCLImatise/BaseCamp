version 1.0

task OmeroConfigParse {
  input {
    File? file
    Boolean? defaults
    Boolean? rst
    Boolean? keys
    Boolean? headers
    Boolean? no_web
  }
  command <<<
    omero config parse \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{true="--defaults" false="" defaults} \
      ~{true="--rst" false="" rst} \
      ~{true="--keys" false="" keys} \
      ~{true="--headers" false="" headers} \
      ~{true="--no-web" false="" no_web}
  >>>
  parameter_meta {
    file: "Alternative location for a Java properties file"
    defaults: "Show key/value configuration defaults"
    rst: "Generate reStructuredText from omero.properties"
    keys: "Print just the keys from omero.properties"
    headers: "Print all headers from omero.properties"
    no_web: "Do not parse Web properties"
  }
}