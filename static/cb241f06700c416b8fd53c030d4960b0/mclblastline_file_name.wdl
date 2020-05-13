version 1.0

task MclblastlineFileName {
  input {
    String? mcxMcxDeBlast
  }
  command <<<
    mclblastline file-name \
      ~{mcxMcxDeBlast}
  >>>
}