version 1.0

task Binreads {
  input {
    File? name_output_file
    Boolean? chrom
    Boolean? verbose
    Boolean? bin
    Boolean? about
    File bed_format_file
  }
  command <<<
    binreads \
      ~{bed_format_file} \
      ~{if (name_output_file) then "-output" else ""} \
      ~{if (chrom) then "-chrom" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (bin) then "-bin" else ""} \
      ~{if (about) then "-about" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name_output_file: "Name of output file (default: stdout)"
    chrom: "chrom sizes file"
    verbose: "print more run info"
    bin: "size of bins"
    about: "print about message"
    bed_format_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}