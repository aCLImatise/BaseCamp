version 1.0

task Pydownsampler {
  input {
    Boolean? down_coverage
    File? output_filename_prefix
    File? coverage
    Boolean? v
    File bamsamcram_file_downsampled
  }
  command <<<
    pydownsampler \
      ~{bamsamcram_file_downsampled} \
      ~{if (down_coverage) then "--downcoverage" else ""} \
      ~{if (output_filename_prefix) then "--output" else ""} \
      ~{if (coverage) then "--coverage" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pydownsampler:1.0--py_0"
  }
  parameter_meta {
    down_coverage: "The coverage you want to downsample to (Required argument)"
    output_filename_prefix: "Output filename prefix (Optional)"
    coverage: "Print out average coverage for file"
    v: ""
    bamsamcram_file_downsampled: "BAM/SAM/CRAM file to be downsampled (Required argument)"
  }
  output {
    File out_stdout = stdout()
    File out_output_filename_prefix = "${in_output_filename_prefix}"
    File out_coverage = "${in_coverage}"
  }
}