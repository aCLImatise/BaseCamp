version 1.0

task GaasFastqGuessMyFormat.pl {
  input {
    String fastFastQ
    Boolean aA
    Boolean tT
  }
  command <<<
    gaas_fastq_guessMyFormat.pl \
      ~{if defined(fastFastQ) then ("--fastq " +  '"' + fastFastQ + '"') else ""} \
      ~{true="-a" false="" aA} \
      ~{true="-t" false="" tT}
  >>>
}