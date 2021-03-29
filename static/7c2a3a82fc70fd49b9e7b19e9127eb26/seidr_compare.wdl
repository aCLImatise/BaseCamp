version 1.0

task SeidrCompare {
  input {
    Int? network_one
    Int? network_two
    Boolean? arg_a_a
    Boolean? arg_network_b
    Boolean? arg_translate_node
    Boolean? print_overlap_nodes
    File? force_overwrite_output
    File? o
    Boolean? arg_auto_directory
  }
  command <<<
    seidr compare \
      ~{if defined(network_one) then ("--network-1 " +  '"' + network_one + '"') else ""} \
      ~{if defined(network_two) then ("--network-2 " +  '"' + network_two + '"') else ""} \
      ~{if (arg_a_a) then "-i" else ""} \
      ~{if (arg_network_b) then "-j" else ""} \
      ~{if (arg_translate_node) then "-t" else ""} \
      ~{if (print_overlap_nodes) then "-n" else ""} \
      ~{if (force_overwrite_output) then "-f" else ""} \
      ~{if (o) then "-o" else ""} \
      ~{if (arg_auto_directory) then "-T" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565"
  }
  parameter_meta {
    network_one: "Input SeidrFile for network A"
    network_two: "Input SeidrFile for network B"
    arg_a_a: "[ --index-a ] arg (=last score)  Merge scores on this index for network A"
    arg_network_b: "[ --index-b ] arg (=last score)  Merge scores on this index for network B"
    arg_translate_node: "[ --translate ] arg              Translate node names in network A\\naccording to this table"
    print_overlap_nodes: "[ --nodes ]                      Print overlap of nodes instead of edges"
    force_overwrite_output: "[ --force ]                      Force overwrite output file if it exists"
    o: "[ --outfile ] arg (=-)           Output file name ['-' for stdout]"
    arg_auto_directory: "[ --tempdir ] arg (=auto)        Directory to store temporary data"
  }
  output {
    File out_stdout = stdout()
    File out_force_overwrite_output = "${in_force_overwrite_output}"
    File out_o = "${in_o}"
  }
}