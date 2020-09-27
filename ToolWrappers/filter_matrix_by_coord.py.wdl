version 1.0

task FilterMatrixByCoordpy {
  input {
    File? in_matrix
    String? out_prefix
    File? in_coords
    String? action
  }
  command <<<
    filter_matrix_by_coord_py \
      ~{if defined(in_matrix) then ("--in_matrix " +  '"' + in_matrix + '"') else ""} \
      ~{if defined(out_prefix) then ("--out_prefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(in_coords) then ("--in_coords " +  '"' + in_coords + '"') else ""} \
      ~{if defined(action) then ("--action " +  '"' + action + '"') else ""}
  >>>
  parameter_meta {
    in_matrix: "/path/to/file [REQUIRED]"
    out_prefix: "prefix for output files [REQUIRED]"
    in_coords: "/path/to/file [REQUIRED]"
    action: "action to perform: keep SNPs in range or remove?,\\ndefaults to keep\\n"
  }
  output {
    File out_stdout = stdout()
  }
}