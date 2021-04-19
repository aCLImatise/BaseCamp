version 1.0

task Nanoq {
  input {
    Boolean? crab
    Boolean? detail
    Int? keep_bases
    File? fast_x
    Int? max_length
    Int? min_length
    File? fastx_output_file
    Int? keep_percent
    Int? min_quality
    Int? top
  }
  command <<<
    nanoq \
      ~{if (crab) then "--crab" else ""} \
      ~{if (detail) then "--detail" else ""} \
      ~{if defined(keep_bases) then ("--keep_bases " +  '"' + keep_bases + '"') else ""} \
      ~{if defined(fast_x) then ("--fastx " +  '"' + fast_x + '"') else ""} \
      ~{if defined(max_length) then ("--max_length " +  '"' + max_length + '"') else ""} \
      ~{if defined(min_length) then ("--min_length " +  '"' + min_length + '"') else ""} \
      ~{if defined(fastx_output_file) then ("--output " +  '"' + fastx_output_file + '"') else ""} \
      ~{if defined(keep_percent) then ("--keep_percent " +  '"' + keep_percent + '"') else ""} \
      ~{if defined(min_quality) then ("--min_quality " +  '"' + min_quality + '"') else ""} \
      ~{if defined(top) then ("--top " +  '"' + top + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nanoq:0.2.1--h7d875b9_0"
  }
  parameter_meta {
    crab: "Rust-Bio parser (fastq only) [false]"
    detail: "Print detailed read summary [false]"
    keep_bases: "Keep reads with best quality bases [0]"
    fast_x: "Fastx input file [-]"
    max_length: "Maximum sequence length [0]"
    min_length: "Minimum sequence length [0]"
    fastx_output_file: "Fastx output file [-]"
    keep_percent: "Keep best percent quality bases [0]"
    min_quality: "Minimum average sequence quality [0]"
    top: "Print <top> length + quality reads [5]"
  }
  output {
    File out_stdout = stdout()
    File out_fastx_output_file = "${in_fastx_output_file}"
  }
}