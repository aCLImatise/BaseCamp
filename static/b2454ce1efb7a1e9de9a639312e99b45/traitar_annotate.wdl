version 1.0

task TraitarAnnotate {
  input {
    String? gene_gff_type
    String? cpus
    String output_dir
  }
  command <<<
    traitar annotate \
      ~{output_dir} \
      ~{if defined(gene_gff_type) then ("--gene_gff_type " +  '"' + gene_gff_type + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""}
  >>>
  parameter_meta {
    gene_gff_type: "if the input is amino acids the type of gene prediction GFF file can be specified for mapping the phenotype predictions to the genes"
    cpus: "number of cpus used for the individual steps; maximum is number of samples; needs parallel"
    output_dir: "directory for the output; will be created if it doesn't exist yet"
  }
}