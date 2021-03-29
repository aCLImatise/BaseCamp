version 1.0

task RbtCsvreport {
  input {
    File? formatter
    Int? rows_per_page
    File? separator
    String? sort_column
    String? sort_order
    File csv_path
  }
  command <<<
    rbt csv_report \
      ~{csv_path} \
      ~{if defined(formatter) then ("--formatter " +  '"' + formatter + '"') else ""} \
      ~{if defined(rows_per_page) then ("--rows-per-page " +  '"' + rows_per_page + '"') else ""} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""} \
      ~{if defined(sort_column) then ("--sort-column " +  '"' + sort_column + '"') else ""} \
      ~{if defined(sort_order) then ("--sort-order " +  '"' + sort_order + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rust-bio-tools:0.20.1--heda7bfa_0"
  }
  parameter_meta {
    formatter: "Configure a custom formatter function for each column by providing a file\\ncontaining a javascript object with csv column title as the key and a format\\nfunction as the value. More information on the formatting functions and how\\nto use them here: https://bootstrap-table.com/docs/api/column-\\noptions/#formatter"
    rows_per_page: "Sets the numbers of rows of each table per page. Default is 100 [default:\\n100]"
    separator: "Change the separator of the csv file to tab or anything else. Default is \\\",\\\"\\n[default: ,]"
    sort_column: "Column that the data should be sorted by"
    sort_order: "Order the data ascending or descending. Default is descending [default:\\ndescending]  [possible values: ascending, descending]"
    csv_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}