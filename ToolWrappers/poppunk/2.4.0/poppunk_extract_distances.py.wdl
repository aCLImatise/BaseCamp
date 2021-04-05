version 1.0

task PoppunkExtractDistancespy {
  input {
    File? distances
    File? sparse
    File? tree
    File? name_output_file
    String extract_distances
  }
  command <<<
    poppunk_extract_distances_py \
      ~{extract_distances} \
      ~{if defined(distances) then ("--distances " +  '"' + distances + '"') else ""} \
      ~{if defined(sparse) then ("--sparse " +  '"' + sparse + '"') else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(name_output_file) then ("--output " +  '"' + name_output_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/poppunk:2.4.0--py39h7f0572b_0"
  }
  parameter_meta {
    distances: "Prefix of input pickle (and optionally, numpy file) of\\npre-calculated distances (required)"
    sparse: "Sparse distance matrix file name"
    tree: "Newick file containing phylogeny of isolates"
    name_output_file: "Name of output file"
    extract_distances: ""
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}