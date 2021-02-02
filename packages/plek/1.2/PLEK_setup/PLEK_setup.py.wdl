version 1.0

task PLEKSetuppy {
  command <<<
    PLEK_setup_py
  >>>
  output {
    File out_stdout = stdout()
  }
}