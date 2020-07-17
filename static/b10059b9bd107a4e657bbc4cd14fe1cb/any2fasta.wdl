version 1.0

task Any2fasta {
  input {
    Boolean? print_version_exit
    Boolean? output_running_errors
    Boolean? replace_ambiguous_letters
    Boolean? lowercase_the_sequence
    Boolean? uppercase_the_sequence
    Boolean? options
    Boolean? more_options
  }
  command <<<
    any2fasta \
      ~{true="-v" false="" print_version_exit} \
      ~{true="-q" false="" output_running_errors} \
      ~{true="-n" false="" replace_ambiguous_letters} \
      ~{true="-l" false="" lowercase_the_sequence} \
      ~{true="-u" false="" uppercase_the_sequence} \
      ~{true="-OPTIONS" false="" options} \
      ~{true="-MORE_OPTIONS" false="" more_options}
  >>>
  parameter_meta {
    print_version_exit: "Print version and exit"
    output_running_errors: "No output while running, only errors"
    replace_ambiguous_letters: "Replace ambiguous IUPAC letters with 'N'"
    lowercase_the_sequence: "Lowercase the sequence"
    uppercase_the_sequence: "Uppercase the sequence"
    options: ""
    more_options: ""
  }
}