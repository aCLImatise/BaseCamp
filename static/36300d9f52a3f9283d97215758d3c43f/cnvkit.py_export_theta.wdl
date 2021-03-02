version 1.0

task CnvkitpyExportTheta {
  input {
    Int? reference
    File? output_file_name
    File? vcf
    File? sample_id
    String? normal_id
    Int? min_variant_depth
    Boolean? ignore_vcfs_genotypes
  }
  command <<<
    cnvkit_py export theta \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(sample_id) then ("--sample-id " +  '"' + sample_id + '"') else ""} \
      ~{if defined(normal_id) then ("--normal-id " +  '"' + normal_id + '"') else ""} \
      ~{if defined(min_variant_depth) then ("--min-variant-depth " +  '"' + min_variant_depth + '"') else ""} \
      ~{if (ignore_vcfs_genotypes) then "-z" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cnvkit:0.9.8--py_0"
  }
  parameter_meta {
    reference: "Reference copy number profile (.cnn), or normal-sample\\nbin-level log2 copy ratios (.cnr). Use if the\\ntumor_segment input file does not contain a \\\"weight\\\"\\ncolumn."
    output_file_name: "Output file name."
    vcf: "VCF file containing SNVs observed in both the tumor\\nand normal samples. Tumor sample ID should match the\\n`tumor_segment` filename or be specified with\\n-i/--sample-id."
    sample_id: "Specify the name of the tumor sample in the VCF (given\\nwith -v/--vcf). [Default: taken the tumor_segment file\\nname]"
    normal_id: "Corresponding normal sample ID in the input VCF."
    min_variant_depth: "Minimum read depth for a SNP in the VCF to be counted.\\n[Default: 20]"
    ignore_vcfs_genotypes: "[ALT_FREQ], --zygosity-freq [ALT_FREQ]\\nIgnore VCF's genotypes (GT field) and instead infer\\nzygosity from allele frequencies. [Default if used\\nwithout a number: 0.25]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}