version 1.0

task MergeVcf.sh {
  input {
    Boolean? force
    String? vcf_name
    File? output_file_relative
    String? verbose
    String sample_dirs_file
  }
  command <<<
    mergeVcf.sh \
      ~{sample_dirs_file} \
      ~{true="--force" false="" force} \
      ~{if defined(vcf_name) then ("--vcfname " +  '"' + vcf_name + '"') else ""} \
      ~{if defined(output_file_relative) then ("--output " +  '"' + output_file_relative + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    force: "Force processing even when result files already exist and are newer than inputs (default: False)"
    vcf_name: "File name of the vcf files which must exist in each of the sample directories (default: consensus.vcf)"
    output_file_relative: "Output file. Relative or absolute path to the merged multi-vcf file (default: snpma.vcf)"
    verbose: "Verbose message level (0=no info, 5=lots) (default: 1)"
    sample_dirs_file: "Relative or absolute path to file containing a list of directories -- one per sample"
  }
}