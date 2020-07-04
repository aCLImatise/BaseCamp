version 1.0

task PLEK.py {
  input {
    Boolean? fast_a
    Boolean? out
    Boolean? thread
    Boolean? minlength
    Boolean? is_out_msg
    Boolean? is_rm_tempfile
  }
  command <<<
    PLEK.py \
      ~{true="-fasta" false="" fast_a} \
      ~{true="-out" false="" out} \
      ~{true="-thread" false="" thread} \
      ~{true="-minlength" false="" minlength} \
      ~{true="-isoutmsg" false="" is_out_msg} \
      ~{true="-isrmtempfile" false="" is_rm_tempfile}
  >>>
  parameter_meta {
    fast_a: "The name of a fasta file, its sequences are to be predicted."
    out: "The file name for the results of prediction. Predicted positive  samples are labeled as \"Coding\", and negative as \"Non-coding\"."
    thread: "(Optional) The number of threads for running the PLEK program.  The bigger this number is, the faster PLEK runs. Default value: 5."
    minlength: "(Optional) The minimum length of sequences. The sequences whose  lengths are more than minlength will be processed. Default  value: 200."
    is_out_msg: "(Optional) Output messages to stdout(screen) or not. \"0\" means  that PLEK be run quietly. \"1\" means that PLEK outputs the details of processing. Default value: 0."
    is_rm_tempfile: "(Optional) Remove temporary files or not. \"0\" means that PLEK  retains temporary files. \"1\" means that PLEK remove temporary  files. Default value: 1."
  }
}