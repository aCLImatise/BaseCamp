version 1.0

task Remock {
  input {
    File? file
    String? random
    Boolean? debug
    File? mock
    File? xcel
    Boolean? test
    File? nodes_path
  }
  command <<<
    remock \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{if defined(random) then ("--random " +  '"' + random + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{if defined(mock) then ("--mock " +  '"' + mock + '"') else ""} \
      ~{if defined(xcel) then ("--xcel " +  '"' + xcel + '"') else ""} \
      ~{true="--test" false="" test} \
      ~{if defined(nodes_path) then ("--nodespath " +  '"' + nodes_path + '"') else ""}
  >>>
  parameter_meta {
    file: "Explicit source: Centrifuge output file as source"
    random: "Random score generated. Please provide the minimum hit length (mhl) of the classification; 15 by default"
    debug: "increase output verbosity and perform additional checks"
    mock: "Mock files to be read for mock Centrifuge sequences layout. If a single directory is entered, every .mck file inside will be taken as a different sample. Multiple -f is available to include several samples."
    xcel: "Excel file with the mock layout."
    test: "generate mock data ready for testing Recentrifuge"
    nodes_path: "path for the nodes information files (nodes.dmp and names.dmp from NCBI)"
  }
}