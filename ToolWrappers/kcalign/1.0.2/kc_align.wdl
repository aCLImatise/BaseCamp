version 1.0

task Kcalign {
  input {
    String? reference
    String? sequences
    Int? start
    Int? end
    String? mode
    Boolean? compress
    String? table
    Boolean? keep
    String? dist
    Int? threads
  }
  command <<<
    kc_align \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(sequences) then ("--sequences " +  '"' + sequences + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(end) then ("--end " +  '"' + end + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if (compress) then "--compress" else ""} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{if (keep) then "--keep" else ""} \
      ~{if defined(dist) then ("--dist " +  '"' + dist + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/kcalign:1.0.2--py_0"
  }
  parameter_meta {
    reference: "Reference sequence"
    sequences: "Other sequences to align"
    start: "1-based start position (required in genome mode)"
    end: "1-based end position (required in genome mode)"
    mode: "Alignment mode (genome, gene, or mixed) (required)"
    compress: "Compress identical sequences"
    table: "Choose alternative translation table (See https://www.\\nncbi.nlm.nih.gov/Taxonomy/Utils/wprintgc.cgi for\\nvalues)"
    keep: "Keep translated pre-alignment sequences file named\\npre_align.fasta, otherwise will delete"
    dist: "For genome/mixed mode, determines the max distance a\\nhomologous sequence can be before it is discarded from\\nthe alignment (default = none). Distance limits: none\\n< very-close < close < semi-close < less-close"
    threads: "Number of simultaneous threads to use (must be a\\nmultiple of 3)"
  }
  output {
    File out_stdout = stdout()
  }
}