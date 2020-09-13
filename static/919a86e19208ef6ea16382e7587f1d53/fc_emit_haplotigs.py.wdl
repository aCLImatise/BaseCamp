version 1.0

task FcEmitHaplotigspy {
  command <<<
    fc_emit_haplotigs_py
  >>>
  output {
    File out_stdout = stdout()
  }
}