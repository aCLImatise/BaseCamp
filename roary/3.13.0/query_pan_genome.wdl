version 1.0

task QueryPanGenome {
  input {
    File? groups_filename
    String? action_unionintersectioncomplementgenemultifastadifference
    Float? percentage_isolates_gene
    File? output_filename
    String? comma_separated_list
    String? comma_separated_one
    String? comma_separated_two
    Boolean? verbose_output_stdout
  }
  command <<<
    query_pan_genome \
      ~{if defined(groups_filename) then ("-g " +  '"' + groups_filename + '"') else ""} \
      ~{if defined(action_unionintersectioncomplementgenemultifastadifference) then ("-a " +  '"' + action_unionintersectioncomplementgenemultifastadifference + '"') else ""} \
      ~{if defined(percentage_isolates_gene) then ("-c " +  '"' + percentage_isolates_gene + '"') else ""} \
      ~{if defined(output_filename) then ("-o " +  '"' + output_filename + '"') else ""} \
      ~{if defined(comma_separated_list) then ("-n " +  '"' + comma_separated_list + '"') else ""} \
      ~{if defined(comma_separated_one) then ("-i " +  '"' + comma_separated_one + '"') else ""} \
      ~{if defined(comma_separated_two) then ("-t " +  '"' + comma_separated_two + '"') else ""} \
      ~{if (verbose_output_stdout) then "-v" else ""}
  >>>
  parameter_meta {
    groups_filename: "groups filename [clustered_proteins]"
    action_unionintersectioncomplementgenemultifastadifference: "action (union/intersection/complement/gene_multifasta/difference) [union]"
    percentage_isolates_gene: "percentage of isolates a gene must be in to be core [99]"
    output_filename: "output filename [pan_genome_results]"
    comma_separated_list: "comma separated list of gene names for use with gene_multifasta action"
    comma_separated_one: "comma separated list of filenames, comparison set one"
    comma_separated_two: "comma separated list of filenames, comparison set two"
    verbose_output_stdout: "verbose output to STDOUT"
  }
  output {
    File out_stdout = stdout()
    File out_output_filename = "${in_output_filename}"
  }
}