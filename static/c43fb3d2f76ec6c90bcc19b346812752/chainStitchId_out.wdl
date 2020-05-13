version 1.0

task ChainStitchIdOut.chain {
  input {
    String? inInChain
    String? outOutChain
  }
  command <<<
    chainStitchId out.chain \
      ~{inInChain} \
      ~{outOutChain}
  >>>
}