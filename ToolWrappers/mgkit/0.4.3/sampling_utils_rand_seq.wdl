version 1.0

task SamplingutilsRandSeq {
  input {
    Boolean? verbose
    String? output_file
  }
  command <<<
    sampling_utils rand_seq \
      ~{output_file} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "-n, --num-seqs INTEGER       Number of sequences to generate  [default:\\n1000]\\n-gc, --gc-content FLOAT      GC content (defaults to .5 out of 1)  [default:\\n0.5]\\n-i, --infer-params FILENAME  Infer parameters GC content and Quality model\\nfrom file\\n-r, --coding-prop FLOAT      Proportion of coding sequences  [default: 0.0]\\n-l, --length INTEGER         Sequence length  [default: 150]\\n-d, --const-model            Use a model with constant qualities + noise\\n-x, --dist-loc FLOAT         Use as the starting point quality  [default:\\n30.0]\\n-q, --fastq                  The output file is a FastQ file\\n-m, --save-model FILENAME    Save inferred qualities model to a pickle file\\n-a, --read-model FILENAME    Load qualities model from a pickle file\\n--progress                   Shows Progress Bar\\n--help                       Show this message and exit.\\n"
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}