version 1.0

task TOBIASFormatMotifs {
  input {
    Boolean? one_more_input
    File? task_join_output
    Boolean? format
    Boolean? task_perform_motif
    File? filter
    Int? verbosity
  }
  command <<<
    TOBIAS FormatMotifs \
      ~{if (one_more_input) then "--input" else ""} \
      ~{if (task_join_output) then "--output" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if (task_perform_motif) then "--task" else ""} \
      ~{if (filter) then "--filter" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tobias:0.12.10--py37h97743b1_0"
  }
  parameter_meta {
    one_more_input: "[ [ ...]]  One or more input motif files (required)"
    task_join_output: "If task == join, output is the joined output file; if task == split,\\noutput is a directory (required)"
    format: "Desired motif output format (pfm, jaspar, meme) (default: \\\"jaspar\\\")"
    task_perform_motif: "Which task to perform on motif files (join/split) (default: join)"
    filter: "File containing list of motif names/ids to filter on. Only motifs\\nfitting entries in filter will be output."
    verbosity: "Level of output logging (0: silent, 1: errors/warnings, 2: info, 3:\\nstats, 4: debug, 5: spam) (default: 3)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_task_join_output = "${in_task_join_output}"
    File out_filter = "${in_filter}"
  }
}