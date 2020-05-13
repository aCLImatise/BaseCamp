version 1.0

task MclblastlineMclpipeline {
  input {
    String? mcxMcxDeBlast
  }
  command <<<
    mclblastline mclpipeline \
      ~{mcxMcxDeBlast}
  >>>
}