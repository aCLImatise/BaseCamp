version 1.0

task MafToSnpBedDatabaseInput.mafOutput.bed {
  input {
    String? inputInputGp
    String? outputOutputBed
  }
  command <<<
    mafToSnpBed database input.maf output.bed \
      ~{inputInputGp} \
      ~{outputOutputBed}
  >>>
}