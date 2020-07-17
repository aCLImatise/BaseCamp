version 1.0

task ClstrSizeHistogram.pl {
  input {
    String? bin
    String cl_str_file
  }
  command <<<
    clstr_size_histogram.pl \
      ~{cl_str_file} \
      ~{if defined(bin) then ("-bin " +  '"' + bin + '"') else ""}
  >>>
  parameter_meta {
    bin: ""
    cl_str_file: ""
  }
}