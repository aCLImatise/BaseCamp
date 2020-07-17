version 1.0

task QuasitoolsComplexityBam {
  input {
    Float? haplotype_filter
    File? output_location
    String reference_location
    String bam_location
    String k
  }
  command <<<
    quasitools complexity bam \
      ~{reference_location} \
      ~{bam_location} \
      ~{k} \
      ~{if defined(haplotype_filter) then ("--haplotype_filter " +  '"' + haplotype_filter + '"') else ""} \
      ~{if defined(output_location) then ("--output_location " +  '"' + output_location + '"') else ""}
  >>>
  parameter_meta {
    haplotype_filter: "User defined A filter between 0 and 100, inclusive. Abundancesbelow the filter size will be removed from each positionallist. The default is 0 (i.e. no filtering)."
    output_location: "Output the quasispecies complexity in CSV format to the specified file."
    reference_location: ""
    bam_location: ""
    k: ""
  }
}