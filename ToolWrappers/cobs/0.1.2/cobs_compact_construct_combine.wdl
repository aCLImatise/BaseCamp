version 1.0

task CobsCompactconstructcombine {
  input {
    Boolean? page_size
    String in_dir
    File out_file
  }
  command <<<
    cobs compact_construct_combine \
      ~{in_dir} \
      ~{out_file} \
      ~{if (page_size) then "--page-size" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cobs:0.1.2--py39h56fc30b_0"
  }
  parameter_meta {
    page_size: "the page size of the compact the index, default: 8192"
    in_dir: "path to the input directory"
    out_file: "path to the output file"
  }
  output {
    File out_stdout = stdout()
    File out_out_file = "${in_out_file}"
  }
}