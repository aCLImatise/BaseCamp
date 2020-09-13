version 1.0

task Krakenhllreport {
  input {
    Boolean? show_zeros
    Boolean? tax_on_counts
    Boolean? tax_on_list
    String? db
  }
  command <<<
    krakenhll_report \
      ~{if (show_zeros) then "--show-zeros" else ""} \
      ~{if (tax_on_counts) then "--taxon-counts" else ""} \
      ~{if (tax_on_list) then "--taxon-list" else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""}
  >>>
  parameter_meta {
    show_zeros: "Show full taxonomy table."
    tax_on_counts: "Input files are in the format '<taxon ID><tab><count>' instead of Kraken output."
    tax_on_list: "Input files is list of taxon IDs instead of Kraken output."
    db: ""
  }
  output {
    File out_stdout = stdout()
  }
}