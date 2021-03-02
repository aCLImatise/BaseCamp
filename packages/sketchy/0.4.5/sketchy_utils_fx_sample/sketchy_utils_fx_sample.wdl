version 1.0

task SketchyUtilsFxsample {
  input {
    File? fast_x
    File? output_fast_file
    Int? sample
    Boolean? replacement
    Boolean? seed
  }
  command <<<
    sketchy utils fx_sample \
      ~{if defined(fast_x) then ("--fastx " +  '"' + fast_x + '"') else ""} \
      ~{if defined(output_fast_file) then ("--output " +  '"' + output_fast_file + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if (replacement) then "--replacement" else ""} \
      ~{if (seed) then "--seed" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sketchy:0.4.5--py37h9a982cc_0"
  }
  parameter_meta {
    fast_x: "Path to Fast{a,q} input file.  [required]"
    output_fast_file: "Output to Fast{a,q} file. Default stdout [-]"
    sample: "Sample size in number of reads [1000]."
    replacement: "Sample with replacement [false]."
    seed: "Seed for sampling function [none]."
  }
  output {
    File out_stdout = stdout()
    File out_output_fast_file = "${in_output_fast_file}"
  }
}