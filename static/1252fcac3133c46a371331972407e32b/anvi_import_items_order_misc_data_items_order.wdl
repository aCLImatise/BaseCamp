version 1.0

task AnviimportitemsorderMiscdataitemsorder {
  input {
    String? var_0
    String? p
    File? i
    String an_vi_import_items_order
    File? path
    String? var_5
  }
  command <<<
    anvi_import_items_order misc_data_items_order \
      ~{an_vi_import_items_order} \
      ~{path} \
      ~{var_5} \
      ~{if defined(var_0) then ("--name " +  '"' + var_0 + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    var_0: ""
    p: ""
    i: ""
    an_vi_import_items_order: ""
    path: ""
    var_5: ""
  }
  output {
    File out_stdout = stdout()
  }
}