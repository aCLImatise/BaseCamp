version 1.0

task MafToSnpBedInput.gp {
  input {
    String? databaseDatabase
    String? inputInputMaf
    String? inputInputGp
    String? outputOutputBed
  }
  command <<<
    mafToSnpBed input.gp \
      ~{databaseDatabase} \
      ~{inputInputMaf} \
      ~{inputInputGp} \
      ~{outputOutputBed}
  >>>
}