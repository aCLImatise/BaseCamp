version 1.0

task ErrorCorrected2frg {
  input {
    String lengthLengthMin
  }
  command <<<
    error_corrected2frg \
      ~{if defined(lengthLengthMin) then ("--length-min " +  '"' + lengthLengthMin + '"') else ""}
  >>>
}