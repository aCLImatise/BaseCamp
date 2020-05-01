version 1.0

task GenoStats {
  input {
    String freqFreqSum
    String eigenEigenStratGeno
    String eigenEigenStratSnp
    String eigenEigenStratInd
  }
  command <<<
    genoStats \
      ~{if defined(freqFreqSum) then ("--freqsum " +  '"' + freqFreqSum + '"') else ""} \
      ~{if defined(eigenEigenStratGeno) then ("--eigenstratGeno " +  '"' + eigenEigenStratGeno + '"') else ""} \
      ~{if defined(eigenEigenStratSnp) then ("--eigenstratSnp " +  '"' + eigenEigenStratSnp + '"') else ""} \
      ~{if defined(eigenEigenStratInd) then ("--eigenstratInd " +  '"' + eigenEigenStratInd + '"') else ""}
  >>>
}