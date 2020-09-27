version 1.0

task BlobtoolsMap2cov {
  input {
    File? in_file
    File? bam
    File? cas
    String? output_prefix
    Boolean? calculate_cov
  }
  command <<<
    blobtools map2cov \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(cas) then ("--cas " +  '"' + cas + '"') else ""} \
      ~{if defined(output_prefix) then ("--output " +  '"' + output_prefix + '"') else ""} \
      ~{if (calculate_cov) then "--calculate_cov" else ""}
  >>>
  parameter_meta {
    in_file: "FASTA file of assembly. Headers are split at whitespaces."
    bam: "...          BAM file (requires pysam)"
    cas: "...          CAS file (requires clc_mapping_info in $PATH)"
    output_prefix: "Output prefix"
    calculate_cov: "Legacy coverage, slower. New default is to estimate coverages\\nbased on read lengths of first 10K reads.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}