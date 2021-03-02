version 1.0

task PoppunkExtractDistancespy {
  input {
    File? distances
    File? tree
    File? name_output_file
    String extract_tabseparated_file
  }
  command <<<
    poppunk_extract_distances_py \
      ~{extract_tabseparated_file} \
      ~{if defined(distances) then ("--distances " +  '"' + distances + '"') else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(name_output_file) then ("--output " +  '"' + name_output_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/poppunk:2.3.0--py_0"
  }
  parameter_meta {
    distances: "Prefix of input pickle and numpy file of pre-\\ncalculated distances (required)"
    tree: "Newick file containing phylogeny of isolates"
    name_output_file: "Name of output file"
    extract_tabseparated_file: "Extract tab-separated file of distances from pkl and npy files"
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}