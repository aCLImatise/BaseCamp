version 1.0

task MathNetNumericsxml {
  command <<<
    MathNet_Numerics_xml
  >>>
  output {
    File out_stdout = stdout()
  }
}