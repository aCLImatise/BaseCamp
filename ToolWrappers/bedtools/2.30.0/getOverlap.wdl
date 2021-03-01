version 1.0

task GetOverlap {
  input {
    Boolean? input_file_use
    Boolean? cols
  }
  command <<<
    getOverlap \
      ~{if (input_file_use) then "-i" else ""} \
      ~{if (cols) then "-cols" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bedtools:2.30.0--hc088bd4_0"
  }
  parameter_meta {
    input_file_use: "Input file. Use \\\"stdin\\\" for pipes."
    cols: "Specify the columns (1-based) for the starts and ends of the\\nfeatures for which you'd like to compute the overlap/distance.\\nThe columns must be listed in the following order:\\nstart1,end1,start2,end2"
  }
  output {
    File out_stdout = stdout()
  }
}