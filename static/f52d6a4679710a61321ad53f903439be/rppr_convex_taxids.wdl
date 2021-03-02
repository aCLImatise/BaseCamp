version 1.0

task RpprConvexTaxids {
  input {
    Boolean? reference_package_path
    Boolean? specify_filename_write
    Boolean? out_dir
    Boolean? prefix
    Boolean? no_csv
    Boolean? help
    String convex_tax_ids
  }
  command <<<
    rppr convex_taxids \
      ~{convex_tax_ids} \
      ~{if (reference_package_path) then "-c" else ""} \
      ~{if (specify_filename_write) then "-o" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (no_csv) then "--no-csv" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference_package_path: "Reference package path. Required."
    specify_filename_write: "Specify the filename to write to."
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames."
    no_csv: "Output the results as a padded matrix instead of csv."
    help: "Display this list of options"
    convex_tax_ids: ""
  }
  output {
    File out_stdout = stdout()
  }
}