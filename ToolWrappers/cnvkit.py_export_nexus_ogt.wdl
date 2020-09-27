version 1.0

task CnvkitpyExportNexusogt {
  input {
    String? sample_id
    String? normal_id
    Int? min_variant_depth
    Boolean? ignore_vcfs_genotypes
    Int? min_weight
    File? output_file_name
    File filename
    String vcf
    String frequencies_dot
  }
  command <<<
    cnvkit_py export nexus_ogt \
      ~{filename} \
      ~{vcf} \
      ~{frequencies_dot} \
      ~{if defined(sample_id) then ("--sample-id " +  '"' + sample_id + '"') else ""} \
      ~{if defined(normal_id) then ("--normal-id " +  '"' + normal_id + '"') else ""} \
      ~{if defined(min_variant_depth) then ("--min-variant-depth " +  '"' + min_variant_depth + '"') else ""} \
      ~{if (ignore_vcfs_genotypes) then "-z" else ""} \
      ~{if defined(min_weight) then ("--min-weight " +  '"' + min_weight + '"') else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""}
  >>>
  parameter_meta {
    sample_id: "Specify the name of the sample in the VCF to use to\\nextract b-allele frequencies."
    normal_id: "Corresponding normal sample ID in the input VCF."
    min_variant_depth: "Minimum read depth for a SNV to be included in the\\nb-allele frequency calculation. [Default: 20]"
    ignore_vcfs_genotypes: "[ALT_FREQ], --zygosity-freq [ALT_FREQ]\\nIgnore VCF's genotypes (GT field) and instead infer\\nzygosity from allele frequencies. [Default if used\\nwithout a number: 0.25]"
    min_weight: "Minimum weight (between 0 and 1) for a bin to be\\nincluded in the output. [Default: 0.0]"
    output_file_name: "Output file name.\\n"
    filename: "Log2 copy ratio data file (*.cnr), the output of the\\n'fix' sub-command."
    vcf: "VCF of SNVs for the same sample, to calculate b-allele"
    frequencies_dot: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}