version 1.0

task Spliceai {
  input {
    Boolean? path_input_standard
    File? path_output_standard
    File? path_reference_genome
    File? gencode_vlift_inpackage
    Boolean? maximum_distance_variant
    Boolean? mask_scores_representing
    Float one_dot_three
  }
  command <<<
    spliceai \
      ~{one_dot_three} \
      ~{if (path_input_standard) then "-I" else ""} \
      ~{if (path_output_standard) then "-O" else ""} \
      ~{if defined(path_reference_genome) then ("-R " +  '"' + path_reference_genome + '"') else ""} \
      ~{if defined(gencode_vlift_inpackage) then ("-A " +  '"' + gencode_vlift_inpackage + '"') else ""} \
      ~{if (maximum_distance_variant) then "-D" else ""} \
      ~{if (mask_scores_representing) then "-M" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    path_input_standard: "[input]     path to the input VCF file, defaults to standard in"
    path_output_standard: "[output]    path to the output VCF file, defaults to standard out"
    path_reference_genome: "path to the reference genome fasta file"
    gencode_vlift_inpackage: "\\\"grch37\\\" (GENCODE V24lift37 canonical annotation file in\\npackage), \\\"grch38\\\" (GENCODE V24 canonical annotation file in\\npackage), or path to a similar custom gene annotation file"
    maximum_distance_variant: "[distance]  maximum distance between the variant and gained/lost splice\\nsite, defaults to 50"
    mask_scores_representing: "[mask]      mask scores representing annotated acceptor/donor gain and\\nunannotated acceptor/donor loss, defaults to 0\\n"
    one_dot_three: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_standard = "${in_path_output_standard}"
  }
}