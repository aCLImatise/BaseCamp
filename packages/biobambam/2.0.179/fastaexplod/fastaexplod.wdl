version 1.0

task Fastaexplod {
  input {
    Boolean? single_line
    Boolean? long_name
    Boolean? cols_length_default
    Boolean? data_only
    Boolean? prefix_fasta_output
  }
  command <<<
    fastaexplod \
      ~{if (single_line) then "--singleline" else ""} \
      ~{if (long_name) then "--longname" else ""} \
      ~{if (cols_length_default) then "-l" else ""} \
      ~{if (data_only) then "--dataonly" else ""} \
      ~{if (prefix_fasta_output) then "-p" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobambam:2.0.179--hc9558a2_0"
  }
  parameter_meta {
    single_line: ": do not wrap sequence data lines"
    long_name: ": do not shorten name"
    cols_length_default: "<cols>        : line length (default: 80)"
    data_only: ": do not print FastA header (data only)"
    prefix_fasta_output: ": prefix for FastA output files (default: fasta_)"
  }
  output {
    File out_stdout = stdout()
  }
}