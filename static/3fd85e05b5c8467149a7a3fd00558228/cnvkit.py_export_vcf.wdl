version 1.0

task CnvkitpyExportVcf {
  input {
    String? cnr
    File? sample_id
    Int? ploidy
    String? sample_sex
    Boolean? haploid_x_reference
    File? output_file_name
  }
  command <<<
    cnvkit_py export vcf \
      ~{if defined(cnr) then ("--cnr " +  '"' + cnr + '"') else ""} \
      ~{if defined(sample_id) then ("--sample-id " +  '"' + sample_id + '"') else ""} \
      ~{if defined(ploidy) then ("--ploidy " +  '"' + ploidy + '"') else ""} \
      ~{if defined(sample_sex) then ("--sample-sex " +  '"' + sample_sex + '"') else ""} \
      ~{if (haploid_x_reference) then "--haploid-x-reference" else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""}
  >>>
  parameter_meta {
    cnr: "Bin-level copy ratios (*.cnr). Used to indicate fuzzy\\nboundaries for segments in the output VCF via the\\nCIPOS and CIEND tags."
    sample_id: "Sample name to write in the genotype field of the\\noutput VCF file. [Default: use the sample ID, taken\\nfrom the file name]"
    ploidy: "Ploidy of the sample cells. [Default: 2]"
    sample_sex: "Specify the sample's chromosomal sex as male or\\nfemale. (Otherwise guessed from X and Y coverage)."
    haploid_x_reference: "Was a male reference used? If so, expect half ploidy\\non chrX and chrY; otherwise, only chrY has half\\nploidy. In CNVkit, if a male reference was used, the\\n\\\"neutral\\\" copy number (ploidy) of chrX is 1; chrY is\\nhaploid for either reference sex."
    output_file_name: "Output file name.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_sample_id = "${in_sample_id}"
    File out_output_file_name = "${in_output_file_name}"
  }
}