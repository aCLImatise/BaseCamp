version 1.0

task MafToBigMafOut.bed {
  input {
    String? referencedReferencedB
    String? inputInputMaf
    String? outOutBed
  }
  command <<<
    mafToBigMaf out.bed \
      ~{referencedReferencedB} \
      ~{inputInputMaf} \
      ~{outOutBed}
  >>>
}