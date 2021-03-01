version 1.0

task MagpurifyPhylomarkers {
  input {
    File? db
    Boolean? continue
    Int? max_target_seqs
    String? cut_off_type
    String? seq_type
    String? hit_type
    Array[String] exclude_clades
    Int? bin_fract
    Int? contig_fract
    Boolean? allow_no_class
    Int? threads
    String fna
    String out
    String files
  }
  command <<<
    magpurify phylo_markers \
      ~{fna} \
      ~{out} \
      ~{files} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if (continue) then "--continue" else ""} \
      ~{if defined(max_target_seqs) then ("--max_target_seqs " +  '"' + max_target_seqs + '"') else ""} \
      ~{if defined(cut_off_type) then ("--cutoff_type " +  '"' + cut_off_type + '"') else ""} \
      ~{if defined(seq_type) then ("--seq_type " +  '"' + seq_type + '"') else ""} \
      ~{if defined(hit_type) then ("--hit_type " +  '"' + hit_type + '"') else ""} \
      ~{if defined(exclude_clades) then ("--exclude_clades " +  '"' + exclude_clades + '"') else ""} \
      ~{if defined(bin_fract) then ("--bin_fract " +  '"' + bin_fract + '"') else ""} \
      ~{if defined(contig_fract) then ("--contig_fract " +  '"' + contig_fract + '"') else ""} \
      ~{if (allow_no_class) then "--allow_noclass" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    db: "Path to reference database. By default, the\\nMAGPURIFYDB environmental variable is used (default:\\nNone)"
    continue: "Go straight to quality estimation and skip all\\nprevious steps (default: False)"
    max_target_seqs: "Maximum number of targets reported in BLAST table\\n(default: 1)"
    cut_off_type: "Use strict or sensitive %ID cutoff for taxonomically\\nannotating genes (default: strict)"
    seq_type: "Choose to search genes versus DNA or protein database\\n(default: protein)"
    hit_type: "Transfer taxonomy of all hits or top hit per gene\\n(default: top_hit)"
    exclude_clades: "List of clades to exclude (ex: s__1300164.4) (default:\\nNone)"
    bin_fract: "Min fraction of genes in bin that agree with consensus\\ntaxonomy for bin annotation (default: 0.7)"
    contig_fract: "Min fraction of genes in that disagree with bin\\ntaxonomy for filtering (default: 1.0)"
    allow_no_class: "Allow a bin to be unclassfied and flag any classified\\ncontigs (default: False)"
    threads: "Number of CPUs to use (default: 1)"
    fna: "Path to input genome in FASTA format"
    out: "Output directory to store results and intermediate"
    files: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}