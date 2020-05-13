version 1.0

task MafToBigMafReferenceDbInput.maf {
  input {
    String? outOutBed
  }
  command <<<
    mafToBigMaf referenceDb input.maf \
      ~{outOutBed}
  >>>
}