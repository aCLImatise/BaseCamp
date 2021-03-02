version 1.0

task Anviexportitemsorder {
  input {
    File? path__dbpath
    String? name_name_dontprovide
    File? output_file
    File? path
    String? var_4
  }
  command <<<
    anvi_export_items_order \
      ~{path} \
      ~{var_4} \
      ~{if defined(path__dbpath) then ("-p " +  '"' + path__dbpath + '"') else ""} \
      ~{if defined(name_name_dontprovide) then ("--name " +  '"' + name_name_dontprovide + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    path__dbpath: "PATH, --db-path DB PATH\\nAn appropriate anvi'o database. (default: None)"
    name_name_dontprovide: "NAME     The name of the order you want to export. If you don't\\nprovide an order name, anvi'o will show you the names\\nof all available orders in the database. (default:\\nNone)"
    output_file: "File path to store results. (default: None)"
    path: ""
    var_4: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}