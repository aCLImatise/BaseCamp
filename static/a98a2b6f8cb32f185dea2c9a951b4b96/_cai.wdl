version 1.0

task _cai {
  input {
    Boolean cCFile
  }
  command <<<
    _cai \
      ~{true="-cfile" false="" cCFile}
  >>>
}