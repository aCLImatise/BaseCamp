version 1.0

task MafToBigMafReferenceDbOut.bed {
  input {
    String? inputInputMaf
    String? outOutBed
  }
  command <<<
    mafToBigMaf referenceDb out.bed \
      ~{inputInputMaf} \
      ~{outOutBed}
  >>>
}