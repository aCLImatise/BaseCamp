version 1.0

task RtgChildsim {
  input {
    String? father
    File? input_vcf_containing
    String? mother
    File? output_vcf_file
    String? output_sdf
    String? sample
    Float? extra_crossovers
    Directory? genetic_map_dir
    Boolean? no_gzip
    String? ploidy
    Int? seed
    String? sex
    Boolean? show_crossovers
    String genome
  }
  command <<<
    rtg childsim \
      ~{genome} \
      ~{if defined(father) then ("--father " +  '"' + father + '"') else ""} \
      ~{if defined(input_vcf_containing) then ("--input " +  '"' + input_vcf_containing + '"') else ""} \
      ~{if defined(mother) then ("--mother " +  '"' + mother + '"') else ""} \
      ~{if defined(output_vcf_file) then ("--output " +  '"' + output_vcf_file + '"') else ""} \
      ~{if defined(output_sdf) then ("--output-sdf " +  '"' + output_sdf + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(extra_crossovers) then ("--extra-crossovers " +  '"' + extra_crossovers + '"') else ""} \
      ~{if defined(genetic_map_dir) then ("--genetic-map-dir " +  '"' + genetic_map_dir + '"') else ""} \
      ~{if (no_gzip) then "--no-gzip" else ""} \
      ~{if defined(ploidy) then ("--ploidy " +  '"' + ploidy + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(sex) then ("--sex " +  '"' + sex + '"') else ""} \
      ~{if (show_crossovers) then "--show-crossovers" else ""}
  >>>
  parameter_meta {
    father: "name of the existing sample to use as the father"
    input_vcf_containing: "input VCF containing parent variants"
    mother: "name of the existing sample to use as the mother"
    output_vcf_file: "output VCF file name"
    output_sdf: "if set, output an SDF containing the sample"
    sample: "name for new child sample"
    extra_crossovers: "probability of extra crossovers per chromosome\\n(Default is 0.01)"
    genetic_map_dir: "if set, load genetic maps from this directory\\nfor recombination point selection"
    no_gzip: "do not gzip the output"
    ploidy: "ploidy to use. Allowed values are [auto,\\ndiploid, haploid] (Default is auto)"
    seed: "seed for the random number generator"
    sex: "sex of individual. Allowed values are [male,\\nfemale, either] (Default is either)"
    show_crossovers: "if set, display information regarding haplotype\\nselection and crossover points\\n"
    genome: "-t, --reference=SDF          SDF containing the reference genome"
  }
  output {
    File out_stdout = stdout()
    File out_output_vcf_file = "${in_output_vcf_file}"
  }
}