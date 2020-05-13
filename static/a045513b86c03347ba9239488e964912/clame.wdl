version 1.0

task Clame {
  input {
    Int bB
    String fm9Fm9
    String fastFastQ
    String eE
    Boolean multiMultiFastA
    String ntNt
    String outputOutput
    String printPrint
    Int sizeSizeBin
  }
  command <<<
    clame \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(fm9Fm9) then ("-fm9 " +  '"' + fm9Fm9 + '"') else ""} \
      ~{if defined(fastFastQ) then ("-fastq " +  '"' + fastFastQ + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{true="-multiFasta" false="" multiMultiFastA} \
      ~{if defined(ntNt) then ("-nt " +  '"' + ntNt + '"') else ""} \
      ~{if defined(outputOutput) then ("-output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(printPrint) then ("-print " +  '"' + printPrint + '"') else ""} \
      ~{if defined(sizeSizeBin) then ("-sizeBin " +  '"' + sizeSizeBin + '"') else ""}
  >>>
}