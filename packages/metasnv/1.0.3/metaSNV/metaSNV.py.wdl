version 1.0

task MetaSNVpy {
  input {
    File? db_ann
    Boolean? print_commands
    String dir
    File file
    String line
    String alignments_dot
    String out
    String differently_dot
  }
  command <<<
    metaSNV_py \
      ~{dir} \
      ~{file} \
      ~{line} \
      ~{alignments_dot} \
      ~{out} \
      ~{differently_dot} \
      ~{if defined(db_ann) then ("--db_ann " +  '"' + db_ann + '"') else ""} \
      ~{if (print_commands) then "--print-commands" else ""}
  >>>
  parameter_meta {
    db_ann: "Database gene annotation."
    print_commands: "Instead of executing the commands, simply print them"
    dir: "A metaSNP initialized project directory"
    file: "File with an input list of bam files, one file per"
    line: "REF_DB_FILE           reference multi-sequence FASTA file used for the"
    alignments_dot: "optional arguments:"
    out: "--threads INT         Number of jobs to run simmultaneously. Will create"
    differently_dot: "--n_splits INT        Number of bins to split ref into"
  }
  output {
    File out_stdout = stdout()
  }
}