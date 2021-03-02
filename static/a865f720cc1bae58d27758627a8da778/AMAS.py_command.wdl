version 1.0

task AMASpyCommand {
  input {
    String concat
    String convert
    String replicate
    String split
    String summary
    String remove
    String translate
    String trim
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
      ~{translate} \
      ~{trim} \
      ~{subcommand_to_run}
  >>>
  runtime {
    docker: "quay.io/biocontainers/amas:1.0--pyh864c0ab_0"
  }
  parameter_meta {
    concat: "Concatenate input alignments"
    convert: "Convert to other file format"
    replicate: "Create replicate data sets for phylogenetic jackknife"
    split: "Split alignment according to a partitions file"
    summary: "Write alignment summary"
    remove: "Remove taxa from alignment"
    translate: "Translate DNA alignment into protein alignment"
    trim: "Remove columns from alignment"
    subcommand_to_run: "Subcommand to run"
  }
  output {
    File out_stdout = stdout()
  }
}