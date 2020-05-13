version 1.0

task NanosimhTrain {
  input {
    String inInFile
    String refRef
    String mafMaf
    String profileProfile
    Int numNumBins
    Boolean noNoModelFit
  }
  command <<<
    nanosimh_train \
      ~{if defined(inInFile) then ("--infile " +  '"' + inInFile + '"') else ""} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(mafMaf) then ("--maf " +  '"' + mafMaf + '"') else ""} \
      ~{if defined(profileProfile) then ("--profile " +  '"' + profileProfile + '"') else ""} \
      ~{if defined(numNumBins) then ("--num-bins " +  '"' + numNumBins + '"') else ""} \
      ~{true="--no-model-fit" false="" noNoModelFit}
  >>>
}