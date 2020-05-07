version 1.0

task MafToSnpBedDatabaseInput.gp {
  input {
    String? inputInputMaf
    String? inputInputGp
    String? outputOutputBed
  }
  command <<<
    mafToSnpBed database input.gp \
      ~{inputInputMaf} \
      ~{inputInputGp} \
      ~{outputOutputBed}
  >>>
}