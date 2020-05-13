version 1.0

task NanosimHTrain {
  input {
    String inInFile
    String mafMaf
    Int numNumBins
    Boolean noNoModelFit
  }
  command <<<
    nanosim-h-train \
      ~{if defined(inInFile) then ("--infile " +  '"' + inInFile + '"') else ""} \
      ~{if defined(mafMaf) then ("--maf " +  '"' + mafMaf + '"') else ""} \
      ~{if defined(numNumBins) then ("--num-bins " +  '"' + numNumBins + '"') else ""} \
      ~{true="--no-model-fit" false="" noNoModelFit}
  >>>
}