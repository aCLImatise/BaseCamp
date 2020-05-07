version 1.0

task Rank.pl {
  input {
    String precisionPrecision
    Boolean nN
    String? optionsOptions
    String? sourceSourceFile1
    String? sourceSourceFile2
  }
  command <<<
    rank.pl \
      ~{optionsOptions} \
      ~{if defined(precisionPrecision) then ("--precision " +  '"' + precisionPrecision + '"') else ""} \
      ~{true="--N" false="" nN} \
      ~{sourceSourceFile1} \
      ~{sourceSourceFile2}
  >>>
}