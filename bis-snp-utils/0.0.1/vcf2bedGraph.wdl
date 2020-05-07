version 1.0

task Vcf2bedGraph.pl {
  input {
    Int sampleSampleOrder
    Int minMinCt
  }
  command <<<
    vcf2bedGraph.pl \
      ~{if defined(sampleSampleOrder) then ("--sample_order " +  '"' + sampleSampleOrder + '"') else ""} \
      ~{if defined(minMinCt) then ("--minCT " +  '"' + minMinCt + '"') else ""}
  >>>
}