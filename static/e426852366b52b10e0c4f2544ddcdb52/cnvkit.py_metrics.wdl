version 1.0

task CnvkitpyMetrics {
  input {
    Array[String] segments
    Boolean? drop_low_coverage
    File? output_table_file
    String cn_arrays
  }
  command <<<
    cnvkit_py metrics \
      ~{cn_arrays} \
      ~{if defined(segments) then ("--segments " +  '"' + segments + '"') else ""} \
      ~{if (drop_low_coverage) then "--drop-low-coverage" else ""} \
      ~{if defined(output_table_file) then ("--output " +  '"' + output_table_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cnvkit:0.9.8--py_0"
  }
  parameter_meta {
    segments: "One or more segmentation data files (*.cns, output of\\nthe 'segment' command). If more than one file is\\ngiven, the number must match the coverage data files,\\nin which case the input files will be paired together\\nin the given order. Otherwise, the same segments will\\nbe used for all coverage files."
    drop_low_coverage: "Drop very-low-coverage bins before calculations to\\nreduce negative \\\"fat tail\\\" of bin log2 values in poor-\\nquality tumor samples."
    output_table_file: "Output table file name.\\n"
    cn_arrays: "One or more bin-level coverage data files (*.cnn,\\n*.cnr)."
  }
  output {
    File out_stdout = stdout()
    File out_output_table_file = "${in_output_table_file}"
  }
}