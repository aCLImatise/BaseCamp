version 1.0

task CreateSnpListpy {
  input {
    Boolean? force
    File? vcf_name
    Int? max_snps
    File? output_file_relative
    Int? verbose
    String sample_dirs_file
    String filtered_sample_dirs_file
  }
  command <<<
    create_snp_list_py \
      ~{sample_dirs_file} \
      ~{filtered_sample_dirs_file} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(vcf_name) then ("--vcfname " +  '"' + vcf_name + '"') else ""} \
      ~{if defined(max_snps) then ("--maxsnps " +  '"' + max_snps + '"') else ""} \
      ~{if defined(output_file_relative) then ("--output " +  '"' + output_file_relative + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    force: "Force processing even when result file already exists\\nand is newer than inputs (default: False)"
    vcf_name: "File name of the VCF files which must exist in each of\\nthe sample directories (default: var.flt.vcf)"
    max_snps: "Exclude samples having more than this maximum allowed\\nnumber of SNPs. Set to -1 to disable this function.\\n(default: -1)"
    output_file_relative: "Output file. Relative or absolute path to the SNP list\\nfile (default: snplist.txt)"
    verbose: "Verbose message level (0=no info, 5=lots) (default: 1)"
    sample_dirs_file: "Relative or absolute path to file containing a list of\\ndirectories -- one per sample"
    filtered_sample_dirs_file: "Relative or absolute path to the output file that will\\nbe created containing the filtered list of sample\\ndirectories -- one per sample. The samples in this\\nfile are those without an excessive number of snps.\\nSee the --maxsnps parameter."
  }
  output {
    File out_stdout = stdout()
    File out_output_file_relative = "${in_output_file_relative}"
  }
}