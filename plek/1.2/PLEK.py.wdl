version 1.0

task PLEKpy {
  input {
    Int? is_rm_tempfile
    Boolean? fast_a
    Boolean? out
    Boolean? thread
  }
  command <<<
    PLEK_py \
      ~{if defined(is_rm_tempfile) then ("-isrmtempfile " +  '"' + is_rm_tempfile + '"') else ""} \
      ~{if (fast_a) then "-fasta" else ""} \
      ~{if (out) then "-out" else ""} \
      ~{if (thread) then "-thread" else ""}
  >>>
  parameter_meta {
    is_rm_tempfile: ""
    fast_a: "The name of a fasta file, its sequences are to be predicted."
    out: "The file name for the results of prediction. Predicted positive\\nsamples are labeled as \\\"Coding\\\", and negative as \\\"Non-coding\\\"."
    thread: "(Optional) The number of threads for running the PLEK program.\\nThe bigger this number is, the faster PLEK runs. Default value: 5."
  }
  output {
    File out_stdout = stdout()
  }
}