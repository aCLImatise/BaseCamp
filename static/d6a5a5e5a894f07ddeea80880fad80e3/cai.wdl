version 1.0

task Cai {
  input {
    Boolean cCFile
  }
  command <<<
    cai \
      ~{true="-cfile" false="" cCFile}
  >>>
}