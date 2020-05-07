version 1.0

task MafToSnpBedDatabaseOutput.bed {
  input {
    String? inputInputMaf
    String? inputInputGp
    String? outputOutputBed
  }
  command <<<
    mafToSnpBed database output.bed \
      ~{inputInputMaf} \
      ~{inputInputGp} \
      ~{outputOutputBed}
  >>>
}