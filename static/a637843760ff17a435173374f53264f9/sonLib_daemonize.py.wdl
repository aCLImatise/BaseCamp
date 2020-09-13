version 1.0

task SonLibDaemonizepy {
  command <<<
    sonLib_daemonize_py
  >>>
  output {
    File out_stdout = stdout()
  }
}