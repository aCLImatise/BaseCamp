version 1.0

task DBshow {
  input {
    Boolean? show_untrimmed_database
    Boolean? show_also_quiva
    Boolean? show_also_sequences
    Boolean? show_default_read
    Boolean? show_mask_intervals
    Boolean? produce_quiva_file
    Boolean? produce_arrow_file
    Boolean? use_upper_case
    Boolean? print_w_bp
    Boolean? unq_auqa
  }
  command <<<
    DBshow \
      ~{true="-u" false="" show_untrimmed_database} \
      ~{true="-q" false="" show_also_quiva} \
      ~{true="-a" false="" show_also_sequences} \
      ~{true="-n" false="" show_default_read} \
      ~{true="-m" false="" show_mask_intervals} \
      ~{true="-Q" false="" produce_quiva_file} \
      ~{true="-A" false="" produce_arrow_file} \
      ~{true="-U" false="" use_upper_case} \
      ~{true="-w" false="" print_w_bp} \
      ~{true="-unqaUQA" false="" unq_auqa}
  >>>
  parameter_meta {
    show_untrimmed_database: ": Show the untrimmed database."
    show_also_quiva: ": Show also the .quiva streams."
    show_also_sequences: ": Show also the .arrow pulse sequences."
    show_default_read: ": Do not show the default read DNA sequences."
    show_mask_intervals: ": Show mask intervals and highlight in sequence."
    produce_quiva_file: ": Produce a .quiva file (ignore all other options but -uU)."
    produce_arrow_file: ": Produce a .arrow file (ignore all other options but -uw)."
    use_upper_case: ": Use upper case for DNA (default is lower case)."
    print_w_bp: ": Print -w bp per line (default is 80)."
    unq_auqa: ""
  }
}