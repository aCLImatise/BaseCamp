version 1.0

task MathNetNumericsdll {
  command <<<
    MathNet_Numerics_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}