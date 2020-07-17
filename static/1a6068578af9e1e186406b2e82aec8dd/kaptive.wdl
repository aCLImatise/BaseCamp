version 1.0

task Kaptive.py {
  input {
    Array[String] assembly
    String? k_refs
    String? allelic_typing
    String? out
    Boolean? verbose
    String? threads
    Boolean? no_seq_out
    Boolean? no_table
    Boolean? no_json
    String? start_end_margin
    Int? min_gene_cov
    Int? min_gene_id
    String? low_gene_id
    Int? min_assembly_piece
    String? gap_fill_size
    String? locus_label
  }
  command <<<
    kaptive.py \
      ~{if defined(assembly) then ("--assembly " +  '"' + assembly + '"') else ""} \
      ~{if defined(k_refs) then ("--k_refs " +  '"' + k_refs + '"') else ""} \
      ~{if defined(allelic_typing) then ("--allelic_typing " +  '"' + allelic_typing + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--no_seq_out" false="" no_seq_out} \
      ~{true="--no_table" false="" no_table} \
      ~{true="--no_json" false="" no_json} \
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
    allelic_typing: "SRST2-formatted FASTA file of allelic typing genes to include in results (default: None)"
    out: "Output directory/prefix (default: ./kaptive_results)"
    verbose: "Display detailed information about each assembly in stdout (default: False)"
    threads: "The number of threads to use for the BLAST searches (default: 4)"
    no_seq_out: "Suppress output files of sequences matching locus (default: False)"
    no_table: "Suppress output of tab-delimited table (default: False)"
    no_json: "Suppress output of JSON file (default: False)"
    start_end_margin: "Missing bases at the ends of locus allowed in a perfect match. (default: 10)"
    min_gene_cov: "minimum required % coverage for genes (default: 90.0)"
    min_gene_id: "minimum required % identity for genes (default: 80.0)"
    low_gene_id: "genes with a % identity below this value will be flagged as low identity (default: 95.0)"
    min_assembly_piece: "minimum locus matching assembly piece to return (default: 100)"
    gap_fill_size: "when separate parts of the assembly are found within this distance, they will be merged (default: 100)"
    locus_label: "In the Genbank file, the source feature must have a note identifying the locus name, starting with this label followed by a colon (e.g. /note=\"K locus: K1\") (default: automatically determined)"
  }
}