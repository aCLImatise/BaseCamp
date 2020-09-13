version 1.0

task Kcalign {
  input {
    String? reference
    String? sequences
    Int? start
    Int? end
    String? mode
    Boolean? compress
    Boolean? parallel
    String? table
  }
  command <<<
    kc_align \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(sequences) then ("--sequences " +  '"' + sequences + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(end) then ("--end " +  '"' + end + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if (compress) then "--compress" else ""} \
      ~{if (parallel) then "--parallel" else ""} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""}
  >>>
  parameter_meta {
    reference: "Reference sequence"
    sequences: "Other sequences to align"
    start: "1-based start position (required in genome mode)"
    end: "1-based end position (required in genome mode)"
    mode: "Alignment mode (genome, gene, or mixed) (required)"
    compress: "Compress identical sequences"
    parallel: "Enable parallelization of homology search"
    table: "Choose alternative translation table (See https://www.\\nncbi.nlm.nih.gov/Taxonomy/Utils/wprintgc.cgi for\\nvalues)"
  }
  output {
    File out_stdout = stdout()
  }
}