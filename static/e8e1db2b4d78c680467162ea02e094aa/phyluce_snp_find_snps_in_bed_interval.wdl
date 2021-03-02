version 1.0

task PhyluceSnpFindSnpsInBedInterval {
  input {
    File? uce
    File? snp
    File? the_output_file
  }
  command <<<
    phyluce_snp_find_snps_in_bed_interval \
      ~{if defined(uce) then ("--uce " +  '"' + uce + '"') else ""} \
      ~{if defined(snp) then ("--snp " +  '"' + snp + '"') else ""} \
      ~{if defined(the_output_file) then ("--output " +  '"' + the_output_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    uce: "The UCE BED file"
    snp: "The SNP intersection BED file"
    the_output_file: "The output file"
  }
  output {
    File out_stdout = stdout()
    File out_the_output_file = "${in_the_output_file}"
  }
}