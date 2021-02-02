version 1.0

task Kaptivepy {
  input {
    Array[String] assembly
    File? k_refs
    File? allelic_typing
    Directory? out
    Boolean? verbose
    Int? threads
    Boolean? no_seq_out
    Boolean? no_table
    File? no_json
    Int? start_end_margin
    Int? min_gene_cov
    Int? min_gene_id
    Float? low_gene_id
    Int? min_assembly_piece
    Int? gap_fill_size
    File? locus_label
  }
  command <<<
    kaptive_py \
      ~{if defined(assembly) then ("--assembly " +  '"' + assembly + '"') else ""} \
      ~{if defined(k_refs) then ("--k_refs " +  '"' + k_refs + '"') else ""} \
      ~{if defined(allelic_typing) then ("--allelic_typing " +  '"' + allelic_typing + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (no_seq_out) then "--no_seq_out" else ""} \
      ~{if (no_table) then "--no_table" else ""} \
      ~{if (no_json) then "--no_json" else ""} \
      ~{if defined(start_end_margin) then ("--start_end_margin " +  '"' + start_end_margin + '"') else ""} \
      ~{if defined(min_gene_cov) then ("--min_gene_cov " +  '"' + min_gene_cov + '"') else ""} \
      ~{if defined(min_gene_id) then ("--min_gene_id " +  '"' + min_gene_id + '"') else ""} \
      ~{if defined(low_gene_id) then ("--low_gene_id " +  '"' + low_gene_id + '"') else ""} \
      ~{if defined(min_assembly_piece) then ("--min_assembly_piece " +  '"' + min_assembly_piece + '"') else ""} \
      ~{if defined(gap_fill_size) then ("--gap_fill_size " +  '"' + gap_fill_size + '"') else ""} \
      ~{if defined(locus_label) then ("--locus_label " +  '"' + locus_label + '"') else ""}
  >>>
  parameter_meta {
    assembly: "FASTA file(s) for assemblies (default: None)"
    k_refs: "GenBank file with reference loci (default: None)"
    allelic_typing: "SRST2-formatted FASTA file of allelic typing genes to\\ninclude in results (default: None)"
    out: "Output directory/prefix (default: ./kaptive_results)"
    verbose: "Display detailed information about each assembly in\\nstdout (default: False)"
    threads: "The number of threads to use for the BLAST searches\\n(default: 4)"
    no_seq_out: "Suppress output files of sequences matching locus\\n(default: False)"
    no_table: "Suppress output of tab-delimited table (default:\\nFalse)"
    no_json: "Suppress output of JSON file (default: False)"
    start_end_margin: "Missing bases at the ends of locus allowed in a\\nperfect match. (default: 10)"
    min_gene_cov: "minimum required % coverage for genes (default: 90.0)"
    min_gene_id: "minimum required % identity for genes (default: 80.0)"
    low_gene_id: "genes with a % identity below this value will be\\nflagged as low identity (default: 95.0)"
    min_assembly_piece: "minimum locus matching assembly piece to return\\n(default: 100)"
    gap_fill_size: "when separate parts of the assembly are found within\\nthis distance, they will be merged (default: 100)"
    locus_label: "In the Genbank file, the source feature must have a\\nnote identifying the locus name, starting with this\\nlabel followed by a colon (e.g. /note=\\\"K locus: K1\\\")\\n(default: automatically determined)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
    File out_no_json = "${in_no_json}"
  }
}