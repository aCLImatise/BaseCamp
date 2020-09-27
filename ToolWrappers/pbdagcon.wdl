version 1.0

task Pbdagcon {
  input {
    Boolean? increase_logging_verbosity
    Boolean? align_sequences_adding
    Boolean? arg_trim_alignment
    Boolean? arg_filter_alignments
    Boolean? arg_minimum_coverage
    Boolean? arg_number_use
    Boolean? arg_size_read
    Boolean? arg_size_write
    String? input_flag_optional
    String var_9
  }
  command <<<
    pbdagcon \
      ~{var_9} \
      ~{if (increase_logging_verbosity) then "-v" else ""} \
      ~{if (align_sequences_adding) then "-a" else ""} \
      ~{if (arg_trim_alignment) then "-t" else ""} \
      ~{if (arg_filter_alignments) then "-m" else ""} \
      ~{if (arg_minimum_coverage) then "-c" else ""} \
      ~{if (arg_number_use) then "-j" else ""} \
      ~{if (arg_size_read) then "-r" else ""} \
      ~{if (arg_size_write) then "-w" else ""} \
      ~{if defined(input_flag_optional) then ("--input " +  '"' + input_flag_optional + '"') else ""}
  >>>
  parameter_meta {
    increase_logging_verbosity: "[ --verbose ]               Increase logging verbosity"
    align_sequences_adding: "[ --align ]                 Align sequences before adding to consensus"
    arg_trim_alignment: "[ --trim ] arg (=50)        Trim alignment by N bases on either side"
    arg_filter_alignments: "[ --min-length ] arg (=500) Filter both alignments and corrected reads\\nless than length"
    arg_minimum_coverage: "[ --min-coverage ] arg (=8) Minimum coverage required to correct"
    arg_number_use: "[ --threads ] arg           Number of consensus threads to use"
    arg_size_read: "[ --rbuf ] arg (=30)        Size of the read buffer"
    arg_size_write: "[ --wbuf ] arg (=30)        Size of the write buffer"
    input_flag_optional: "(=-)               Input (flag is optional)"
    var_9: ""
  }
  output {
    File out_stdout = stdout()
  }
}