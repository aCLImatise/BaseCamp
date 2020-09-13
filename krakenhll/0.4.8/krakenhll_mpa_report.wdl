version 1.0

task Krakenhllmpareport {
  input {
    String? db
    Boolean? show_zeros
    Boolean? header_line
    Boolean? intermediate_ranks
  }
  command <<<
    krakenhll_mpa_report \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if (show_zeros) then "--show-zeros" else ""} \
      ~{if (header_line) then "--header-line" else ""} \
      ~{if (intermediate_ranks) then "--intermediate-ranks" else ""}
  >>>
  parameter_meta {
    db: "Name of Kraken database\\n(default: none)"
    show_zeros: "Display taxa even if they lack a read in any sample"
    header_line: "Display a header line indicating sample IDs\\n(sample IDs are the filenames)"
    intermediate_ranks: "Display taxa not at the standard ranks with x__ prefix"
  }
  output {
    File out_stdout = stdout()
  }
}