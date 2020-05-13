version 1.0

task VcfConsensus {
  input {
    Int haplotypeHaplotype
    Boolean iupacIupacCodes
    String sampleSample
  }
  command <<<
    vcf-consensus \
      ~{if defined(haplotypeHaplotype) then ("--haplotype " +  '"' + haplotypeHaplotype + '"') else ""} \
      ~{true="--iupac-codes" false="" iupacIupacCodes} \
      ~{if defined(sampleSample) then ("--sample " +  '"' + sampleSample + '"') else ""}
  >>>
}