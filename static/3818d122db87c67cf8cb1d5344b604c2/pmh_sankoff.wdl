version 1.0

task PmhSankoff {
  input {
    File? color_map_file
    String? output_prefix
    String? primary_anatomical_sites
    String leaf_labeling
  }
  command <<<
    pmh_sankoff \
      ~{leaf_labeling} \
      ~{if defined(color_map_file) then ("-c " +  '"' + color_map_file + '"') else ""} \
      ~{if defined(output_prefix) then ("-o " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(primary_anatomical_sites) then ("-p " +  '"' + primary_anatomical_sites + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/machina:1.2--h176a8bc_1"
  }
  parameter_meta {
    color_map_file: "Color map file"
    output_prefix: "Output prefix"
    primary_anatomical_sites: "Primary anatomical sites separated by commas (if omitted, every\\nanatomical site will be considered iteratively as the primary)\\n"
    leaf_labeling: "Leaf labeling"
  }
  output {
    File out_stdout = stdout()
  }
}