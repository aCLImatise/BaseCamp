version 1.0

task KrakenuniqMpaReport {
  input {
    String? db
    Boolean? show_zeros
    Boolean? header_line
    Boolean? intermediate_ranks
  }
  command <<<
    krakenuniq-mpa-report \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{true="--show-zeros" false="" show_zeros} \
      ~{true="--header-line" false="" header_line} \
      ~{true="--intermediate-ranks" false="" intermediate_ranks}
  >>>
  parameter_meta {
    db: "Name of Kraken database (default: none)"
    show_zeros: "Display taxa even if they lack a read in any sample"
    header_line: "Display a header line indicating sample IDs (sample IDs are the filenames)"
    intermediate_ranks: "Display taxa not at the standard ranks with x__ prefix"
  }
}