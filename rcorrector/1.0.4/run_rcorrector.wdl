version 1.0

task RunRcorrector.pl {
  input {
    String? comma_separated_files
    String? comma_separated_first
    String? comma_separated_second
    String? comma_sperated_files
    String perl
  }
  command <<<
    run_rcorrector.pl \
      ~{perl} \
      ~{if defined(comma_separated_files) then ("-s " +  '"' + comma_separated_files + '"') else ""} \
      ~{if defined(comma_separated_first) then ("-1 " +  '"' + comma_separated_first + '"') else ""} \
      ~{if defined(comma_separated_second) then ("-2 " +  '"' + comma_separated_second + '"') else ""} \
      ~{if defined(comma_sperated_files) then ("-i " +  '"' + comma_sperated_files + '"') else ""}
  >>>
  parameter_meta {
    comma_separated_files: ": comma separated files for single-end data sets"
    comma_separated_first: ": comma separated files for the first mate in the paried-end data sets"
    comma_separated_second: ": comma separated files for the second mate in the paired-end data sets"
    comma_sperated_files: ": comma sperated files for interleaved paired-end data sets"
    perl: ""
  }
}