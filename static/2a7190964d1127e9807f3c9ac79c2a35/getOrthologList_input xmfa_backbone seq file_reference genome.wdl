version 1.0

task GetOrthologListInput xmfaBackbone seq fileReference genome {
  command <<<
    getOrthologList input xmfa backbone seq file reference genome
  >>>
}