version 1.0

task SeidrNeighbours {
  input {
    File? in_file
    Boolean? arg_last_score
    Boolean? arg_number_top
    Boolean? use_rank_instead
    Boolean? print_only_edges
    Boolean? arg_number_openmp
    File? force_overwrite_output
    Boolean? fail_issues_warning
    Boolean? search_case_insensitive
    File? var_9
    String return
    String sorting
  }
  command <<<
    seidr neighbours \
      ~{return} \
      ~{sorting} \
      ~{if defined(in_file) then ("--in-file " +  '"' + in_file + '"') else ""} \
      ~{if (arg_last_score) then "-i" else ""} \
      ~{if (arg_number_top) then "-n" else ""} \
      ~{if (use_rank_instead) then "-r" else ""} \
      ~{if (print_only_edges) then "-u" else ""} \
      ~{if (arg_number_openmp) then "-O" else ""} \
      ~{if (force_overwrite_output) then "-f" else ""} \
      ~{if (fail_issues_warning) then "-s" else ""} \
      ~{if (search_case_insensitive) then "-I" else ""} \
      ~{if (var_9) then "-o" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565"
  }
  parameter_meta {
    in_file: "Input SeidrFile"
    arg_last_score: "[ --index ] arg (=last score)"
    arg_number_top: "[ --neighbours ] arg (=10)     Number of top first-degree neighbours to"
    use_rank_instead: "[ --rank ]                     Use rank instead of score"
    print_only_edges: "[ --unique ]                   Print only unique edges"
    arg_number_openmp: "[ --threads ] arg (=1)         Number of OpenMP threads for parallel"
    force_overwrite_output: "[ --force ]                    Force overwrite output file if it exists"
    fail_issues_warning: "[ --strict ]                   Fail on all issues instead of warning"
    search_case_insensitive: "[ --case-insensitive ]         Search case insensitive nodes"
    var_9: "[ --outfile ] arg (=-)         Output file name ['-' for stdout]"
    return: "-g [ --genes ] arg                Gene names to search"
    sorting: "Common Options:"
  }
  output {
    File out_stdout = stdout()
    File out_force_overwrite_output = "${in_force_overwrite_output}"
    File out_var_9 = "${in_var_9}"
  }
}