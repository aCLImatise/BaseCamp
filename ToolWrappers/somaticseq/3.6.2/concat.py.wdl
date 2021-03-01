version 1.0

task Concatpy {
  input {
    Boolean? in_files
    File? output_file
    Boolean? out_files
    Int? chunk_size
    String? threads
    Boolean? spread
    Boolean? b_gzip_output
    String? input_files
  }
  command <<<
    concat_py \
      ~{input_files} \
      ~{if (in_files) then "-infiles" else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if (out_files) then "-outfiles" else ""} \
      ~{if defined(chunk_size) then ("--chunk-size " +  '"' + chunk_size + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (spread) then "--spread" else ""} \
      ~{if (b_gzip_output) then "--bgzip-output" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/somaticseq:3.6.2--py_0"
  }
  parameter_meta {
    in_files: "[INPUT_FILES [INPUT_FILES ...]], --input-files [INPUT_FILES [INPUT_FILES ...]]\\nInput files (default: None)"
    output_file: "Output file (default: None)"
    out_files: "[OUTPUT_FILES [OUTPUT_FILES ...]], --output-files [OUTPUT_FILES [OUTPUT_FILES ...]]\\nOutput files for spreader (default: None)"
    chunk_size: "In --spread mode, the number of lines to be written\\ninto the output file each time. By default chunk=4 by\\ndefault for fastq files, i.e., every 4 lines make up\\none read record. (default: 4)"
    threads: "only invoked in -spread -bgzip when bgzip compress of\\noutput files can be parallelized (default: None)"
    spread: "Spread content into multiple files. (default: False)"
    b_gzip_output: "compress the output files (default: False)\\n"
    input_files: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}