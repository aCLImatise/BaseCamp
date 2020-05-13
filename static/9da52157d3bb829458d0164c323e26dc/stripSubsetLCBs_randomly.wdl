version 1.0

task StripSubsetLCBsRandomly {
  input {
    String? inputInputXMfa
    String? inputInputBbcOls
    String? outputOutputXMfa
    Int? minMin
    String? lcbLcb
    Int? sizeSize
    Int? minMin
    String? genomesGenomes
    String? randomlyRandomly
    String? subsampleSubsample
    String? toTo
    String? xX
    String? kbKb
  }
  command <<<
    stripSubsetLCBs randomly \
      ~{inputInputXMfa} \
      ~{inputInputBbcOls} \
      ~{outputOutputXMfa} \
      ~{minMin} \
      ~{lcbLcb} \
      ~{sizeSize} \
      ~{minMin} \
      ~{genomesGenomes} \
      ~{randomlyRandomly} \
      ~{subsampleSubsample} \
      ~{toTo} \
      ~{xX} \
      ~{kbKb}
  >>>
}