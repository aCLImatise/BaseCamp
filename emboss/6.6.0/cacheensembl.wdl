version 1.0

task Cacheensembl {
  input {
    Boolean? servername
  }
  command <<<
    cacheensembl \
      ~{true="-servername" false="" servername}
  >>>
  parameter_meta {
    servername: "string     Server name (Any string)"
  }
}