version 1.0

task BedtoolsWindow {
  input {
    Boolean aABam
    Boolean ubUbAm
    Boolean bedBed
    Boolean wW
    Boolean lL
    Boolean rR
    Boolean swSw
    Boolean smSm
    Boolean smSm
    Boolean uU
    Boolean cC
    Boolean vV
    String headerHeader
  }
  command <<<
    bedtools window \
      ~{true="-abam" false="" aABam} \
      ~{true="-ubam" false="" ubUbAm} \
      ~{true="-bed" false="" bedBed} \
      ~{true="-w" false="" wW} \
      ~{true="-l" false="" lL} \
      ~{true="-r" false="" rR} \
      ~{true="-sw" false="" swSw} \
      ~{true="-sm" false="" smSm} \
      ~{true="-Sm" false="" smSm} \
      ~{true="-u" false="" uU} \
      ~{true="-c" false="" cC} \
      ~{true="-v" false="" vV} \
      ~{if defined(headerHeader) then ("-header " +  '"' + headerHeader + '"') else ""}
  >>>
}