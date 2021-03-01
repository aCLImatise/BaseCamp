version 1.0

task Knot {
  input {
    File? contigs
    String? contigs_graph
    String? raw_reads
    String? correct_reads
    String? output_prefix
    String? search_mode
    Int? contig_min_length
    String? read_type
    Boolean? self_lookup
    String contig
  }
  command <<<
    knot \
      ~{contig} \
      ~{if defined(contigs) then ("--contigs " +  '"' + contigs + '"') else ""} \
      ~{if defined(contigs_graph) then ("--contigs_graph " +  '"' + contigs_graph + '"') else ""} \
      ~{if defined(raw_reads) then ("--raw-reads " +  '"' + raw_reads + '"') else ""} \
      ~{if defined(correct_reads) then ("--correct-reads " +  '"' + correct_reads + '"') else ""} \
      ~{if defined(output_prefix) then ("--output " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(search_mode) then ("--search-mode " +  '"' + search_mode + '"') else ""} \
      ~{if defined(contig_min_length) then ("--contig-min-length " +  '"' + contig_min_length + '"') else ""} \
      ~{if defined(read_type) then ("--read-type " +  '"' + read_type + '"') else ""} \
      ~{if (self_lookup) then "--self-lookup" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/knot-asm-analysis:1.3.0--py_0"
  }
  parameter_meta {
    contigs: "fasta file than contains contigs"
    contigs_graph: "contigs graph"
    raw_reads: "read used for assembly"
    correct_reads: "read used for assembly"
    output_prefix: "output prefix"
    search_mode: "what path search optimize, number of base or number of\\nnode"
    contig_min_length: "contig with size lower this parameter are ignored"
    read_type: "type of input read, default pb"
    self_lookup: "if it set knot search path between extremity of same"
    contig: "--help-all            show knot help and snakemake help"
  }
  output {
    File out_stdout = stdout()
  }
}