version 1.0

task RadarChart2py {
  command <<<
    radar_chart2_py
  >>>
  output {
    File out_stdout = stdout()
  }
}