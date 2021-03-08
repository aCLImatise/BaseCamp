version 1.0

task Ms {
  input {
    File? color_map_file
    Boolean? output_search_graph
    Int? maxim_number_enumerate
    String? output_prefix
    String? primary_tumor
    File? migration_tree_file
    String frequencies
  }
  command <<<
    ms \
      ~{frequencies} \
      ~{if defined(color_map_file) then ("-c " +  '"' + color_map_file + '"') else ""} \
      ~{if (output_search_graph) then "-g" else ""} \
      ~{if defined(maxim_number_enumerate) then ("-l " +  '"' + maxim_number_enumerate + '"') else ""} \
      ~{if defined(output_prefix) then ("-o " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(primary_tumor) then ("-p " +  '"' + primary_tumor + '"') else ""} \
      ~{if defined(migration_tree_file) then ("-s " +  '"' + migration_tree_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/machina:1.2--h176a8bc_1"
  }
  parameter_meta {
    color_map_file: "Color map file"
    output_search_graph: "Output search graph"
    maxim_number_enumerate: "Maxim number of mutation trees to enumerate (default: -1, unlimited)"
    output_prefix: "Output prefix"
    primary_tumor: "Primary tumor"
    migration_tree_file: "Migration tree file\\n"
    frequencies: "Frequencies"
  }
  output {
    File out_stdout = stdout()
  }
}