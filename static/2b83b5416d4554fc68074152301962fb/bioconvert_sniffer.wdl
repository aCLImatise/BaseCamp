version 1.0

task BioconvertSniffer {
  input {
    String verbosityVerbosity
    Array[String]+ inputInput
    Boolean quietQuiet
    String? testTestBam
  }
  command <<<
    bioconvert_sniffer \
      ~{testTestBam} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}