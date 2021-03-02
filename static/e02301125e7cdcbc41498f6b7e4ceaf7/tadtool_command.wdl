version 1.0

task TadtoolCommand {
  input {
    String plot
    String tads
    String subset
    String subcommand_to_run
  }
  command <<<
    tadtool command \
      ~{plot} \
      ~{tads} \
      ~{subset} \
      ~{subcommand_to_run}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tadtool:0.82--pyh3252c3a_0"
  }
  parameter_meta {
    plot: "Main interactive TADtool plotting window"
    tads: "Call TADs with pre-defined parameters"
    subset: "Reduce a matrix to a smaller region."
    subcommand_to_run: "Subcommand to run"
  }
  output {
    File out_stdout = stdout()
  }
}