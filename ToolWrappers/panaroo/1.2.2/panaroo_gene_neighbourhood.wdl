version 1.0

task Panaroogeneneighbourhood {
  input {
    String? graph
    String? gene
    String? genome_id
    File? expand_no
    File? out
  }
  command <<<
    panaroo_gene_neighbourhood \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if defined(gene) then ("--gene " +  '"' + gene + '"') else ""} \
      ~{if defined(genome_id) then ("--genome_id " +  '"' + genome_id + '"') else ""} \
      ~{if defined(expand_no) then ("--expand_no " +  '"' + expand_no + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    graph: "[--expand_no EXPAND_NO]"
    gene: "gene of interest"
    genome_id: "genome ID of interest (default=ALL)"
    expand_no: "lengths of the path that will be expanded on in a\\nradius the target gene (default=5)"
    out: "output file"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}