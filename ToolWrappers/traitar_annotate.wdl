version 1.0

task TraitarAnnotate {
  input {
    String? gene_gff_type
    Int? cpus
    String positional_arguments
    String input_dir
    Int sample_two_file
    String directory_output_will
  }
  command <<<
    traitar annotate \
      ~{positional_arguments} \
      ~{input_dir} \
      ~{sample_two_file} \
      ~{directory_output_will} \
      ~{if defined(gene_gff_type) then ("--gene_gff_type " +  '"' + gene_gff_type + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""}
  >>>
  parameter_meta {
    gene_gff_type: "if the input is amino acids the type of gene\\nprediction GFF file can be specified for mapping the\\nphenotype predictions to the genes"
    cpus: "number of cpus used for the individual steps; maximum\\nis number of samples; needs parallel\\n"
    positional_arguments: "positional arguments:"
    input_dir: "directory with the input data"
    sample_two_file: "mapping from samples to fasta files (also see gitHub\\nhelp): sample1_file_name{tab}sample1_name\\nsample2_file_name{tab}sample2_name"
    directory_output_will: "directory for the output; will be created if it\\ndoesn't exist yet"
  }
  output {
    File out_stdout = stdout()
  }
}