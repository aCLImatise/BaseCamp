version 1.0

task Tomr {
  input {
    File? name_output_file
    Boolean? suff
    Boolean? max_frag
    Boolean? verbose
    Boolean? about
    String sam
  }
  command <<<
    to_mr \
      ~{sam} \
      ~{if (name_output_file) then "-output" else ""} \
      ~{if (suff) then "-suff" else ""} \
      ~{if (max_frag) then "-max-frag" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (about) then "-about" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/preseq:3.1.2--hfb6f838_0"
  }
  parameter_meta {
    name_output_file: "Name of output file"
    suff: "read name suffix length (default: 1)"
    max_frag: "maximum allowed insert size"
    verbose: "print more information"
    about: "print about message"
    sam: ""
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}