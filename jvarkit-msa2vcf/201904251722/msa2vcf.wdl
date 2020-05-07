version 1.0

task Msa2vcf.py {
  input {
    Boolean refRef
    Boolean allAllSites
    Boolean consensusConsensus
    Boolean fastFastA
    Boolean haploidHaploid
    Boolean helpHelpFormat
    Boolean outputOutput
  }
  command <<<
    msa2vcf.py \
      ~{true="--REF" false="" refRef} \
      ~{true="--allsites" false="" allAllSites} \
      ~{true="--consensus" false="" consensusConsensus} \
      ~{true="--fasta" false="" fastFastA} \
      ~{true="--haploid" false="" haploidHaploid} \
      ~{true="--helpFormat" false="" helpHelpFormat} \
      ~{true="--output" false="" outputOutput}
  >>>
}