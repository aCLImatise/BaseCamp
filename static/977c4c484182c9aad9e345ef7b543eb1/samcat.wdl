version 1.0

task Samcat {
  input {
    Boolean? write_output_format
    String? display_only_alignment
    Boolean? suppress_headers_output
    File? write_standard_output
    String? write_output_specified
    Boolean? display_file_information
    Boolean? b_nv
    String bam
    String hex
    String text
    String ub_am
  }
  command <<<
    samcat \
      ~{bam} \
      ~{hex} \
      ~{text} \
      ~{ub_am} \
      ~{if (write_output_format) then "-b" else ""} \
      ~{if defined(display_only_alignment) then ("-f " +  '"' + display_only_alignment + '"') else ""} \
      ~{if (suppress_headers_output) then "-n" else ""} \
      ~{if defined(write_standard_output) then ("-o " +  '"' + write_standard_output + '"') else ""} \
      ~{if defined(write_output_specified) then ("-O " +  '"' + write_output_specified + '"') else ""} \
      ~{if (display_file_information) then "-v" else ""} \
      ~{if (b_nv) then "-bnv" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    write_output_format: "Write output in BAM format (equivalent to -Obam)"
    display_only_alignment: "Display only alignment records matching FLAGS"
    suppress_headers_output: "Suppress '@' headers in the output"
    write_standard_output: "Write to FILE rather than standard output"
    write_output_specified: "Write output in the specified FORMAT"
    display_file_information: "Display file information and statistics"
    b_nv: ""
    bam: "Compressed binary BAM format"
    hex: "SAM format, with flags displayed in hexadecimal"
    text: "SAM format, with flags displayed as readable strings"
    ub_am: "Uncompressed binary BAM format"
  }
  output {
    File out_stdout = stdout()
    File out_write_standard_output = "${in_write_standard_output}"
  }
}