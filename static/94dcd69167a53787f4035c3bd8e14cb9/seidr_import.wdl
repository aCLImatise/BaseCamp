version 1.0

task SeidrImport {
  input {
    Boolean? i
    Boolean? var_1
    Boolean? arg_gene_file
    File? arg_output_file
    Boolean? arg_import_name
    Boolean? rank_absolute_scores
    Boolean? rank_scores_highest
    Boolean? drop_edges_weight
    Boolean? force_edges_interpreted
    Boolean? arg_number_openmp
    File? force_overwrite_output
  }
  command <<<
    seidr import \
      ~{if (i) then "-i" else ""} \
      ~{if (var_1) then "-F" else ""} \
      ~{if (arg_gene_file) then "-g" else ""} \
      ~{if (arg_output_file) then "-o" else ""} \
      ~{if (arg_import_name) then "-n" else ""} \
      ~{if (rank_absolute_scores) then "-A" else ""} \
      ~{if (rank_scores_highest) then "-r" else ""} \
      ~{if (drop_edges_weight) then "-z" else ""} \
      ~{if (force_edges_interpreted) then "-u" else ""} \
      ~{if (arg_number_openmp) then "-O" else ""} \
      ~{if (force_overwrite_output) then "-f" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565"
  }
  parameter_meta {
    i: "[ --infile ] arg        Input file name ['-' for stdin]"
    var_1: "[ --format ] arg        The input file format [el, lm, m, ara]"
    arg_gene_file: "[ --genes ] arg         Gene file for input"
    arg_output_file: "[ --outfile ] arg       Output file name"
    arg_import_name: "[ --name ] arg          Import name (algorithm name)"
    rank_absolute_scores: "[ --absolute ]          Rank on absolute of scores"
    rank_scores_highest: "[ --reverse ]           Rank scores in descending order (highest first)"
    drop_edges_weight: "[ --drop-zero ]         Drop edges with a weight of zero from the network"
    force_edges_interpreted: "[ --undirected ]        Force all edges to be interpreted as undirected"
    arg_number_openmp: "[ --threads ] arg (=1)  Number of OpenMP threads for parallel sorting"
    force_overwrite_output: "[ --force ]             Force overwrite output file if it exists"
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_file = "${in_arg_output_file}"
    File out_force_overwrite_output = "${in_force_overwrite_output}"
  }
}