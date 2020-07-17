version 1.0

task TOBIASFormatMotifs {
  input {
    Boolean? one_more_input
    Boolean? task_join_output
    Boolean? format
    Boolean? task_perform_join
    Boolean? filter
    Int? verbosity
  }
  command <<<
    TOBIAS FormatMotifs \
      ~{true="--input" false="" one_more_input} \
      ~{true="--output" false="" task_join_output} \
      ~{true="--format" false="" format} \
      ~{true="--task" false="" task_perform_join} \
      ~{true="--filter" false="" filter} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    one_more_input: "[ [ ...]]  One or more input motif files (required)"
    task_join_output: "If task == join, output is the joined output file; if task == split, output is a directory (required)"
    format: "Desired motif output format (pfm, jaspar, meme) (default: \"jaspar\")"
    task_perform_join: "Which task to perform on motif files (join/split) (default: join)"
    filter: "File containing list of motif names/ids to filter on. Only motifs fitting entries in filter will be output."
    verbosity: "Level of output logging (0: silent, 1: errors/warnings, 2: info, 3: stats, 4: debug, 5: spam) (default: 3)"
  }
}