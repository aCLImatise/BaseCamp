version 1.0

task Stat {
  input {
    Boolean dereferenceDereference
    Boolean fileFileSystem
    String formatFormat
    String printfPrintf
    Boolean terseTerse
  }
  command <<<
    stat \
      ~{true="--dereference" false="" dereferenceDereference} \
      ~{true="--file-system" false="" fileFileSystem} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(printfPrintf) then ("--printf " +  '"' + printfPrintf + '"') else ""} \
      ~{true="--terse" false="" terseTerse}
  >>>
}