version 1.0

task Python37mconfig {
  command <<<
    python3_7m_config
  >>>
  output {
    File out_stdout = stdout()
  }
}