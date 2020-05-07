version 1.0

task _syco {
  input {
    Boolean cCFile
  }
  command <<<
    _syco \
      ~{true="-cfile" false="" cCFile}
  >>>
}