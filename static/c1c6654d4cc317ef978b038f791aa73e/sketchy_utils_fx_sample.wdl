version 1.0

task SketchyUtilsFxSample {
  input {
    File? fast_x
    String? output_fast_file
    Int? sample
    Boolean? replacement
    Boolean? seed
  }
  command <<<
    sketchy utils fx-sample \
      ~{if defined(fast_x) then ("--fastx " +  '"' + fast_x + '"') else ""} \
      ~{if defined(output_fast_file) then ("--output " +  '"' + output_fast_file + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{true="--replacement" false="" replacement} \
      ~{true="--seed" false="" seed}
  >>>
  parameter_meta {
    fast_x: "Path to Fast{a,q} input file.  [required]"
    output_fast_file: "Output to Fast{a,q} file. Default stdout [-]"
    sample: "Sample size in number of reads [1000]."
    replacement: "Sample with replacement [false]."
    seed: "Seed for sampling function [none]."
  }
}