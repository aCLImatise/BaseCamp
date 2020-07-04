version 1.0

task CreateSnpList.py {
  input {
    Boolean? force
    String? vcf_name
    Int? max_snps
    File? output_file_relative
    String? verbose
    String sample_dirs_file
    String filtered_sample_dirs_file
  }
  command <<<
    create_snp_list.py \
      ~{sample_dirs_file} \
      ~{filtered_sample_dirs_file} \
      ~{true="--force" false="" force} \
      ~{if defined(vcf_name) then ("--vcfname " +  '"' + vcf_name + '"') else ""} \
      ~{if defined(max_snps) then ("--maxsnps " +  '"' + max_snps + '"') else ""} \
      ~{if defined(output_file_relative) then ("--output " +  '"' + output_file_relative + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    force: "Force processing even when result file already exists and is newer than inputs (default: False)"
    vcf_name: "File name of the VCF files which must exist in each of the sample directories (default: var.flt.vcf)"
    max_snps: "Exclude samples having more than this maximum allowed number of SNPs. Set to -1 to disable this function. (default: -1)"
    output_file_relative: "Output file. Relative or absolute path to the SNP list file (default: snplist.txt)"
    verbose: "Verbose message level (0=no info, 5=lots) (default: 1)"
    sample_dirs_file: "Relative or absolute path to file containing a list of directories -- one per sample"
    filtered_sample_dirs_file: "Relative or absolute path to the output file that will be created containing the filtered list of sample directories -- one per sample. The samples in this file are those without an excessive number of snps. See the --maxsnps parameter."
  }
}