version 1.0

task ChainStitchIdIn.chain {
  input {
    String? outOutChain
  }
  command <<<
    chainStitchId in.chain \
      ~{outOutChain}
  >>>
}