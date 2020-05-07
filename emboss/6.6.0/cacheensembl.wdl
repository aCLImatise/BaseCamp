version 1.0

task Cacheensembl {
  input {
    Boolean servernameServername
  }
  command <<<
    cacheensembl \
      ~{true="-servername" false="" servernameServername}
  >>>
}