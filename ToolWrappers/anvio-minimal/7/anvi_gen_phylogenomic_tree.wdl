version 1.0

task Anvigenphylogenomictree {
  input {
    File? output_file
    String? program
    String? f
    String clusters
    String concatenated_gene_alignment_fast_a
    String phylogeny
  }
  command <<<
    anvi_gen_phylogenomic_tree \
      ~{clusters} \
      ~{concatenated_gene_alignment_fast_a} \
      ~{phylogeny} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(program) then ("--program " +  '"' + program + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    output_file: "File path to store results. (default: None)"
    program: "Program name. (default: default)"
    f: ""
    clusters: "-f FASTA, --fasta-file FASTA\\nA FASTA-formatted input file (default: None)"
    concatenated_gene_alignment_fast_a: "🍕 Can provide: "
    phylogeny: "🍺 More on `anvi-gen-phylogenomic-tree`:"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}