version 1.0

task MafToSnpBedOutput.bed {
  input {
    String? databaseDatabase
    String? inputInputMaf
    String? inputInputGp
    String? outputOutputBed
  }
  command <<<
    mafToSnpBed output.bed \
      ~{databaseDatabase} \
      ~{inputInputMaf} \
      ~{inputInputGp} \
      ~{outputOutputBed}
  >>>
}