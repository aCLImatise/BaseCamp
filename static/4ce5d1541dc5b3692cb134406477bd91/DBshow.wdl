version 1.0

task DBshow {
  input {
    Boolean? show_untrimmed_database
    Boolean? show_also_quiva
    Boolean? show_also_sequences
    Boolean? show_default_read
    Boolean? show_mask_intervals
    Boolean? produce_quiva_file
    Boolean? produce_file_ignore
    Boolean? use_upper_case
    Boolean? print_bp_line
    Boolean? unq_auqa
  }
  command <<<
    DBshow \
      ~{if (show_untrimmed_database) then "-u" else ""} \
      ~{if (show_also_quiva) then "-q" else ""} \
      ~{if (show_also_sequences) then "-a" else ""} \
      ~{if (show_default_read) then "-n" else ""} \
      ~{if (show_mask_intervals) then "-m" else ""} \
      ~{if (produce_quiva_file) then "-Q" else ""} \
      ~{if (produce_file_ignore) then "-A" else ""} \
      ~{if (use_upper_case) then "-U" else ""} \
      ~{if (print_bp_line) then "-w" else ""} \
      ~{if (unq_auqa) then "-unqaUQA" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    show_untrimmed_database: ": Show the untrimmed database."
    show_also_quiva: ": Show also the .quiva streams."
    show_also_sequences: ": Show also the .arrow pulse sequences."
    show_default_read: ": Do not show the default read DNA sequences."
    show_mask_intervals: ": Show mask intervals and highlight in sequence."
    produce_quiva_file: ": Produce a .quiva file (ignore all other options but -uU)."
    produce_file_ignore: ": Produce a .arrow file (ignore all other options but -uw)."
    use_upper_case: ": Use upper case for DNA (default is lower case)."
    print_bp_line: ": Print -w bp per line (default is 80)."
    unq_auqa: ""
  }
  output {
    File out_stdout = stdout()
  }
}