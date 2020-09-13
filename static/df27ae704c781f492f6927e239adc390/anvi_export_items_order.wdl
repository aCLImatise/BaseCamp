version 1.0

task Anviexportitemsorder {
  input {
    File? path__dbpath
    String? name_name_order
    File? output_file
    File? path
    String? var_4
  }
  command <<<
    anvi_export_items_order \
      ~{path} \
      ~{var_4} \
      ~{if defined(path__dbpath) then ("-p " +  '"' + path__dbpath + '"') else ""} \
      ~{if defined(name_name_order) then ("--name " +  '"' + name_name_order + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    path__dbpath: "PATH, --db-path DB PATH\\nAn appropriate anvi'o database."
    name_name_order: "NAME     The name of the order you want to export. If you don't\\nprovide an order name, anvi'o will show you the names\\nof all available orders in the database."
    output_file: "File path to store results.\\n"
    path: ""
    var_4: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}