version 1.0

task TaxonomyFilterFastq {
  input {
    Directory? output_dir
    Boolean? centrifuge
    Boolean? kraken_two
    String? ancestor_taxid
    String? db
    File? tax_report_filename
    String? flags
    String input_fast_q
  }
  command <<<
    taxonomy_filter_fastq \
      ~{flags} \
      ~{input_fast_q} \
      ~{if (output_dir) then "--output_dir" else ""} \
      ~{if (centrifuge) then "--centrifuge" else ""} \
      ~{if (kraken_two) then "--kraken2" else ""} \
      ~{if defined(ancestor_taxid) then ("--ancestor_taxid " +  '"' + ancestor_taxid + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(tax_report_filename) then ("--tax_report_filename " +  '"' + tax_report_filename + '"') else ""}
  >>>
  parameter_meta {
    output_dir: "Directory to deposited filtered output files in"
    centrifuge: "Filter using report from Centrifuge"
    kraken_two: "Filter using report from Kraken2"
    ancestor_taxid: "Name of ancestor to use as ancestor filter"
    db: "URL for SQLite taxonomy database"
    tax_report_filename: "Output from Kraken2 (default) or Centrifuge"
    flags: ""
    input_fast_q: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}