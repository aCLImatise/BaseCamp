version 1.0

task PLEKpy {
  input {
    Int? is_rm_tempfile
    Int? thread
    File? out
    File? fast_a
  }
  command <<<
    PLEK_py \
      ~{if defined(is_rm_tempfile) then ("-isrmtempfile " +  '"' + is_rm_tempfile + '"') else ""} \
      ~{if defined(thread) then ("-thread " +  '"' + thread + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(fast_a) then ("-fasta " +  '"' + fast_a + '"') else ""}
  >>>
  parameter_meta {
    is_rm_tempfile: "-fasta               The name of a fasta file, its sequences are to be predicted.\\n-out           The file name for the results of prediction. Predicted positive\\nsamples are labeled as \\\"Coding\\\", and negative as \\\"Non-coding\\\".\\n-thread         (Optional) The number of threads for running the PLEK program.\\nThe bigger this number is, the faster PLEK runs. Default value: 5.\\n-minlength   (Optional) The minimum length of sequences. The sequences whose\\nlengths are more than minlength will be processed. Default\\nvalue: 200.\\n-isoutmsg     (Optional) Output messages to stdout(screen) or not. \\\"0\\\" means\\nthat PLEK be run quietly. \\\"1\\\" means that PLEK outputs the details\\nof processing. Default value: 0.\\n-isrmtempfile (Optional) Remove temporary files or not. \\\"0\\\" means that PLEK\\nretains temporary files. \\\"1\\\" means that PLEK remove temporary\\nfiles. Default value: 1."
    thread: ""
    out: ""
    fast_a: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}