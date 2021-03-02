version 1.0

task CfsanSnpPipelineMergeVcfs {
  input {
    Boolean? force
    File? vcf_name
    File? output_file_path
    Int? verbose
  }
  command <<<
    cfsan_snp_pipeline merge_vcfs \
      ~{if (force) then "--force" else ""} \
      ~{if defined(vcf_name) then ("--vcfname " +  '"' + vcf_name + '"') else ""} \
      ~{if defined(output_file_path) then ("--output " +  '"' + output_file_path + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    force: "Force processing even when result files already exist\\nand are newer than inputs (default: False)"
    vcf_name: "File name of the vcf files which must exist in each of\\nthe sample directories (default: consensus.vcf)"
    output_file_path: "Output file. Relative or absolute path to the merged\\nmulti-vcf file (default: snpma.vcf)"
    verbose: "Verbose message level (0=no info, 5=lots) (default: 1)"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_path = "${in_output_file_path}"
  }
}