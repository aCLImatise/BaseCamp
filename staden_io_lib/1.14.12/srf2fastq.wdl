version 1.0

task Srf2fastq {
  input {
    Boolean cC
    Boolean cC
    String sS
    Boolean sS
    Boolean nN
    Boolean aA
    Boolean eE
    Boolean rR
  }
  command <<<
    srf2fastq \
      ~{true="-c" false="" cC} \
      ~{true="-C" false="" cC} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="-S" false="" sS} \
      ~{true="-n" false="" nN} \
      ~{true="-a" false="" aA} \
      ~{true="-e" false="" eE} \
      ~{true="-r" false="" rR}
  >>>
}