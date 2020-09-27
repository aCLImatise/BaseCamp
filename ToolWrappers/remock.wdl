version 1.0

task Remock {
  input {
    File? file
    Int? random
    Boolean? debug
    File? xcel
    Boolean? test
    File? nodes_path
    String checks
  }
  command <<<
    remock \
      ~{checks} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{if defined(random) then ("--random " +  '"' + random + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(xcel) then ("--xcel " +  '"' + xcel + '"') else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if defined(nodes_path) then ("--nodespath " +  '"' + nodes_path + '"') else ""}
  >>>
  parameter_meta {
    file: "Explicit source: Centrifuge output file as source"
    random: "Random score generated. Please provide the minimum hit\\nlength (mhl) of the classification; 15 by default"
    debug: "increase output verbosity and perform additional"
    xcel: "Excel file with the mock layout."
    test: "generate mock data ready for testing Recentrifuge"
    nodes_path: "path for the nodes information files (nodes.dmp and\\nnames.dmp from NCBI)"
    checks: "-m FILE, --mock FILE  Mock files to be read for mock Centrifuge sequences"
  }
  output {
    File out_stdout = stdout()
    File out_file = "${in_file}"
  }
}