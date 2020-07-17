version 1.0

task PLEKModelling.py {
  input {
    String? is_balanced
    Boolean? l_ncrna
    Boolean? prefix
    Boolean? log_two_c
    Boolean? log_two_g
    Boolean? thread
    Boolean? model
    Boolean? range
    Boolean? minlength
    Boolean? is_out_msg
    Boolean? is_rm_tempfile
  }
  command <<<
    PLEKModelling.py \
      ~{if defined(is_balanced) then ("-isbalanced " +  '"' + is_balanced + '"') else ""} \
      ~{true="-lncRNA" false="" l_ncrna} \
      ~{true="-prefix" false="" prefix} \
      ~{true="-log2c" false="" log_two_c} \
      ~{true="-log2g" false="" log_two_g} \
      ~{true="-thread" false="" thread} \
      ~{true="-model" false="" model} \
      ~{true="-range" false="" range} \
      ~{true="-minlength" false="" minlength} \
      ~{true="-isoutmsg" false="" is_out_msg} \
      ~{true="-isrmtempfile" false="" is_rm_tempfile}
  >>>
  parameter_meta {
    is_balanced: "mRNA transcripts used to build predictor, in fasta format."
    l_ncrna: "lncRNA transcripts used to build predictor, in fasta format."
    prefix: "Prefix of the output files."
    log_two_c: "(Optional) The specified range of C parameter for the svm parameter  search. Default value: 0,5,1. (from, to, by; 0,1,2,3,4,5)   "
    log_two_g: "(Optional) The specified range of G parameter for the svm parameter  search. Default value: 0,-5,-1.(from, to, by; 0,-1,-2,-3,-4,-5) "
    thread: "(Optional) The number of threads for running the PLEKModelling  program. The bigger this number is, the faster PLEKModelling runs. Note that a larger thread number means larger consumption of memory. Default value: 12."
    model: "(Optional) The name of a predictor model file (an output file by PLEKModelling.py).   "
    range: "(Optional) The name of a svm range file (an output file by  PLEKModelling.py).   "
    minlength: "(Optional) The minimum length of sequences. The sequences whose  lengths are more than minlength will be processed. Default  value: 200.             "
    is_out_msg: "(Optional) Output messages to stdout(screen) or not. \"0\" means  that PLEKModelling be run quietly. \"1\" means that PLEKModelling  outputs the details of processing. Default value: 0.   "
    is_rm_tempfile: "(Optional) Remove temporary files or not. \"0\" means that PLEKModelling  retains temporary files. \"1\" means that PLEKModelling remove temporary  files. Default value: 1."
  }
}