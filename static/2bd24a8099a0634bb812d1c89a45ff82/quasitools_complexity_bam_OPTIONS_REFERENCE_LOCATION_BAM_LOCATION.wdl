version 1.0

task QuasitoolsComplexityBamOPTIONSREFERENCELOCATIONBAMLOCATION {
  input {
    Float haplotypeHaplotypeFilter
    File outputOutputLocation
  }
  command <<<
    quasitools complexity bam OPTIONS REFERENCE_LOCATION BAM_LOCATION \
      ~{if defined(haplotypeHaplotypeFilter) then ("--haplotype_filter " +  '"' + haplotypeHaplotypeFilter + '"') else ""} \
      ~{if defined(outputOutputLocation) then ("--output_location " +  '"' + outputOutputLocation + '"') else ""}
  >>>
}