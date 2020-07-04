version 1.0

task PanarooGeneNeighbourhood {
  input {
    String? gene
    String? genome_id
    String? graph
    String? expand_no
    String? out
  }
  command <<<
    panaroo-gene-neighbourhood \
      ~{if defined(gene) then ("--gene " +  '"' + gene + '"') else ""} \
      ~{if defined(genome_id) then ("--genome_id " +  '"' + genome_id + '"') else ""} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if defined(expand_no) then ("--expand_no " +  '"' + expand_no + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    gene: "gene of interest"
    genome_id: "genome ID of interest (default=ALL)"
    graph: "genome graph gml ('final_graph.gml')"
    expand_no: "lengths of the path that will be expanded on in a radius the target gene (default=5)"
    out: "output file"
  }
}