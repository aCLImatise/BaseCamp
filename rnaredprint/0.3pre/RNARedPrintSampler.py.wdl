version 1.0

task RNARedPrintSamplerpy {
  command <<<
    RNARedPrintSampler_py
  >>>
  output {
    File out_stdout = stdout()
  }
}