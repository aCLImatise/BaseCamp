version 1.0

task MmseqsCreatetsv {
  input {
    Boolean? first_seq_as_repr
    Boolean? target_column
    Boolean? full_header
    File? db_output
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs createtsv \
      ~{if (first_seq_as_repr) then "--first-seq-as-repr" else ""} \
      ~{if (target_column) then "--target-column" else ""} \
      ~{if (full_header) then "--full-header" else ""} \
      ~{if (db_output) then "--db-output" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (verbosity_level_nothing) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    first_seq_as_repr: "false           Use the first sequence of the clustering result as representative sequence"
    target_column: "1               Select a target column (default 1), 0 if no target id exists."
    full_header: "false           Replace DB ID by its corresponding Full Header"
    db_output: "false           Output a result db instead of a text file"
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
  output {
    File out_stdout = stdout()
    File out_db_output = "${in_db_output}"
  }
}