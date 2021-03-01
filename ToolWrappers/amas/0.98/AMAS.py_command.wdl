version 1.0

task AMASpyCommand {
  input {
    String concat
    String convert
    String replicate
    String split
    String summary
    String remove
    String subcommand_to_run
  }
  command <<<
    AMAS_py command \
      ~{concat} \
      ~{convert} \
      ~{replicate} \
      ~{split} \
      ~{summary} \
      ~{remove} \
      ~{subcommand_to_run}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    concat: "Concatenate input alignments"
    convert: "Convert to other file format"
    replicate: "Create replicate data sets for phylogenetic jackknife"
    split: "Split alignment according to a partitions file"
    summary: "Write alignment summary"
    remove: "Remove taxa from alignment"
    subcommand_to_run: "Subcommand to run"
  }
  output {
    File out_stdout = stdout()
  }
}