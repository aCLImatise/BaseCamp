version 1.0

task Any2fasta {
  input {
    Boolean? print_version_exit
    Boolean? output_running_errors
    Boolean? replace_ambiguous_letters
    Boolean? lowercase_the_sequence
    Boolean? uppercase_the_sequence
    Boolean? more_options
    Boolean? options
  }
  command <<<
    any2fasta \
      ~{if (print_version_exit) then "-v" else ""} \
      ~{if (output_running_errors) then "-q" else ""} \
      ~{if (replace_ambiguous_letters) then "-n" else ""} \
      ~{if (lowercase_the_sequence) then "-l" else ""} \
      ~{if (uppercase_the_sequence) then "-u" else ""} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  parameter_meta {
    print_version_exit: "Print version and exit"
    output_running_errors: "No output while running, only errors"
    replace_ambiguous_letters: "Replace ambiguous IUPAC letters with 'N'"
    lowercase_the_sequence: "Lowercase the sequence"
    uppercase_the_sequence: "Uppercase the sequence"
    more_options: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}