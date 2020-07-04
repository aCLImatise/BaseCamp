version 1.0

task KrakenuniqReport {
  input {
    Boolean? show_zeros
    Boolean? tax_on_counts
    Boolean? tax_on_list
    String? db
  }
  command <<<
    krakenuniq-report \
      ~{true="--show-zeros" false="" show_zeros} \
      ~{true="--taxon-counts" false="" tax_on_counts} \
      ~{true="--taxon-list" false="" tax_on_list} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""}
  >>>
  parameter_meta {
    show_zeros: "Show full taxonomy table."
    tax_on_counts: "Input files are in the format '<taxon ID><tab><count>' instead of Kraken output."
    tax_on_list: "Input files is list of taxon IDs instead of Kraken output."
    db: ""
  }
}