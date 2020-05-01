version 1.0

task PrinseqLite.pl {
  input {
    Boolean helpHelp
    Boolean versionVersion
    Boolean manMan
    Boolean verboseVerbose
    Boolean fastFastQ
    String fastFastA
    String fastq2Fastq2
    String? perlPerl
    String? prinPrinSeqLitePl
    String? inputInputFastQFile
  }
  command <<<
    prinseq-lite.pl \
      ~{perlPerl} \
      ~{true="-help" false="" helpHelp} \
      ~{true="-version" false="" versionVersion} \
      ~{true="-man" false="" manMan} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-fastq" false="" fastFastQ} \
      ~{if defined(fastFastA) then ("-fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(fastq2Fastq2) then ("-fastq2 " +  '"' + fastq2Fastq2 + '"') else ""} \
      ~{prinPrinSeqLitePl} \
      ~{inputInputFastQFile}
  >>>
}