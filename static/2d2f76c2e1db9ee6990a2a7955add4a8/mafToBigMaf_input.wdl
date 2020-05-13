version 1.0

task MafToBigMafInput.maf {
  input {
    String? referencedReferencedB
    String? inputInputMaf
    String? outOutBed
  }
  command <<<
    mafToBigMaf input.maf \
      ~{referencedReferencedB} \
      ~{inputInputMaf} \
      ~{outOutBed}
  >>>
}