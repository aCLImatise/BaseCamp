version 1.0

task TracyAlign {
  input {
    Boolean rR
    Boolean pP
    Boolean kK
    Boolean sS
    Boolean iI
    Boolean gG
    Boolean eE
    Boolean mM
    Boolean nN
    Boolean tT
    Boolean qQ
    Boolean uU
    Boolean lL
    Boolean oO
    String? optionsOptions
    String? traceTraceAb1
  }
  command <<<
    tracy align \
      ~{optionsOptions} \
      ~{true="-r" false="" rR} \
      ~{true="-p" false="" pP} \
      ~{true="-k" false="" kK} \
      ~{true="-s" false="" sS} \
      ~{true="-i" false="" iI} \
      ~{true="-g" false="" gG} \
      ~{true="-e" false="" eE} \
      ~{true="-m" false="" mM} \
      ~{true="-n" false="" nN} \
      ~{true="-t" false="" tT} \
      ~{true="-q" false="" qQ} \
      ~{true="-u" false="" uU} \
      ~{true="-l" false="" lL} \
      ~{true="-o" false="" oO} \
      ~{traceTraceAb1}
  >>>
}