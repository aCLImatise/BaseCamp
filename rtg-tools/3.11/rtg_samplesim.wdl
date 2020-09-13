version 1.0

task RtgSamplesim {
  input {
    File? input_vcf_containing
    File? output_vcf_file
    String? output_sdf
    String? reference
    String? sample
    String? allow_missing_af
    Boolean? no_gzip
    String? ploidy
    Int? seed
    String? sex
  }
  command <<<
    rtg samplesim \
      ~{if defined(input_vcf_containing) then ("--input " +  '"' + input_vcf_containing + '"') else ""} \
      ~{if defined(output_vcf_file) then ("--output " +  '"' + output_vcf_file + '"') else ""} \
      ~{if defined(output_sdf) then ("--output-sdf " +  '"' + output_sdf + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(allow_missing_af) then ("--allow-missing-af " +  '"' + allow_missing_af + '"') else ""} \
      ~{if (no_gzip) then "--no-gzip" else ""} \
      ~{if defined(ploidy) then ("--ploidy " +  '"' + ploidy + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(sex) then ("--sex " +  '"' + sex + '"') else ""}
  >>>
  parameter_meta {
    input_vcf_containing: "input VCF containing population variants"
    output_vcf_file: "output VCF file name"
    output_sdf: "if set, output an SDF containing the sample genome"
    reference: "SDF containing the reference genome"
    sample: "name for sample"
    allow_missing_af: "set, treat variants without allele frequency\\nannotation as uniformly likely"
    no_gzip: "do not gzip the output"
    ploidy: "ploidy to use. Allowed values are [auto, diploid,\\nhaploid] (Default is auto)"
    seed: "seed for the random number generator"
    sex: "sex of individual. Allowed values are [male, female,\\neither] (Default is either)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_vcf_file = "${in_output_vcf_file}"
  }
}