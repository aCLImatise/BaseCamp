version 1.0

task PhyluceSnpFindSnpsInBedInterval {
  input {
    String? uce
    String? snp
    String? the_output_file
  }
  command <<<
    phyluce_snp_find_snps_in_bed_interval \
      ~{if defined(uce) then ("--uce " +  '"' + uce + '"') else ""} \
      ~{if defined(snp) then ("--snp " +  '"' + snp + '"') else ""} \
      ~{if defined(the_output_file) then ("--output " +  '"' + the_output_file + '"') else ""}
  >>>
  parameter_meta {
    uce: "The UCE BED file"
    snp: "The SNP intersection BED file"
    the_output_file: "The output file"
  }
}