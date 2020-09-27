version 1.0

task FcUnzipGenGfaV1py {
  command <<<
    fc_unzip_gen_gfa_v1_py
  >>>
  output {
    File out_stdout = stdout()
  }
}