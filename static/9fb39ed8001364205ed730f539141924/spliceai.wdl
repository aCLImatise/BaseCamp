version 1.0

task Spliceai {
  input {
    Boolean? path_input_defaults
    Boolean? path_output_vcf
    String? path_reference_genome
    String? gencode_v_canonical
    Boolean? maximum_distance_variant
    Boolean? mask_scores_representing
    String? var_input
    String? var_output
  }
  command <<<
    spliceai \
      ~{var_input} \
      ~{var_output} \
      ~{true="-I" false="" path_input_defaults} \
      ~{true="-O" false="" path_output_vcf} \
      ~{if defined(path_reference_genome) then ("-R " +  '"' + path_reference_genome + '"') else ""} \
      ~{if defined(gencode_v_canonical) then ("-A " +  '"' + gencode_v_canonical + '"') else ""} \
      ~{true="-D" false="" maximum_distance_variant} \
      ~{true="-M" false="" mask_scores_representing}
  >>>
  parameter_meta {
    path_input_defaults: "[input]     path to the input VCF file, defaults to standard in"
    path_output_vcf: "[output]    path to the output VCF file, defaults to standard out"
    path_reference_genome: "path to the reference genome fasta file"
    gencode_v_canonical: "\"grch37\" (GENCODE V24lift37 canonical annotation file in package), \"grch38\" (GENCODE V24 canonical annotation file in package), or path to a similar custom gene annotation file"
    maximum_distance_variant: "[distance]  maximum distance between the variant and gained/lost splice site, defaults to 50"
    mask_scores_representing: "[mask]      mask scores representing annotated acceptor/donor gain and unannotated acceptor/donor loss, defaults to 0"
    var_input: ""
    var_output: ""
  }
}