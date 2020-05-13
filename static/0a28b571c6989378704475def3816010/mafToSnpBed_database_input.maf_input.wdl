version 1.0

task MafToSnpBedDatabaseInput.mafInput.gp {
  input {
    String? outputOutputBed
  }
  command <<<
    mafToSnpBed database input.maf input.gp \
      ~{outputOutputBed}
  >>>
}