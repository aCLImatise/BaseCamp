version 1.0

task Downsamplepy {
  input {
    File? reads
    Int? sample
    Boolean? interleave
    Int? seed
    Float vdot_zero_dot_one
  }
  command <<<
    downsample_py \
      ~{vdot_zero_dot_one} \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if (interleave) then "--interleave" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mitobim:1.9.1--0"
  }
  parameter_meta {
    reads: "Readfile (flag can be used repeatadly to process\\nseveral files"
    sample: "Desired size of subsample in percent (1-100; default =\\n50)"
    interleave: "Optional. In case of two input files, data will be\\ninterleaved from these in the output. Otherwise data\\nwill be treated as already interleaved."
    seed: "Optional. Seed for random number generator"
    vdot_zero_dot_one: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}