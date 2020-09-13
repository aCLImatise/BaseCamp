version 1.0

task Qgrs {
  input {
    Boolean? csv
    Boolean? json
    Boolean? read_input_file
    File? write_output_file
    Boolean? filter_output_number
    Boolean? gscore_equal_greater
    Boolean? replace_g_characters
    Boolean? include_qgrs_generated
    Boolean? no_title
  }
  command <<<
    qgrs \
      ~{if (csv) then "-csv" else ""} \
      ~{if (json) then "-json" else ""} \
      ~{if (read_input_file) then "-i" else ""} \
      ~{if (write_output_file) then "-o" else ""} \
      ~{if (filter_output_number) then "-t" else ""} \
      ~{if (gscore_equal_greater) then "-s" else ""} \
      ~{if (replace_g_characters) then "-g" else ""} \
      ~{if (include_qgrs_generated) then "-v" else ""} \
      ~{if (no_title) then "-notitle" else ""}
  >>>
  parameter_meta {
    csv: "output in csv mode"
    json: "output in JSON mode"
    read_input_file: "[input filename]   read input from a file as specified (defaults to stdin)"
    write_output_file: "[output filename]  write output to file as specified (defaults to stdout)"
    filter_output_number: "[n]                filter output to QGRS with number tetrads equal to or greater than n (defaults to 2)"
    gscore_equal_greater: "[n]                filter output to QGRS with g-score equal to or greater than n (defaults to 17)"
    replace_g_characters: "[c]                replace all G characters within tetrads with given character."
    include_qgrs_generated: "include overlapping QGRS in output (very large outputs may be generated)"
    no_title: "omit column titles in output (does not apply to JSON)"
  }
  output {
    File out_stdout = stdout()
    File out_write_output_file = "${in_write_output_file}"
  }
}