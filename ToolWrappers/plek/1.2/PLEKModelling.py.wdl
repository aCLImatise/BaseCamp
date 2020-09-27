version 1.0

task PLEKModellingpy {
  input {
    Int? is_rm_tempfile
  }
  command <<<
    PLEKModelling_py \
      ~{if defined(is_rm_tempfile) then ("-isrmtempfile " +  '"' + is_rm_tempfile + '"') else ""}
  >>>
  parameter_meta {
    is_rm_tempfile: "-k k_mer -nfold n_fold_cross_validation -isbalanced 0_or_1\\n-mRNA          mRNA transcripts used to build predictor, in fasta format.\\n-lncRNA        lncRNA transcripts used to build predictor, in fasta format.\\n-prefix        Prefix of the output files.\\n-log2c        (Optional) The specified range of C parameter for the svm parameter\\nsearch. Default value: 0,5,1. (from, to, by; 0,1,2,3,4,5)\\n-log2g        (Optional) The specified range of G parameter for the svm parameter\\nsearch. Default value: 0,-5,-1.(from, to, by; 0,-1,-2,-3,-4,-5)\\n-thread       (Optional) The number of threads for running the PLEKModelling\\nprogram. The bigger this number is, the faster PLEKModelling runs.\\nNote that a larger thread number means larger consumption of memory.\\nDefault value: 12.\\n-model        (Optional) The name of a predictor model file (an output file\\nby PLEKModelling.py).\\n-range        (Optional) The name of a svm range file (an output file by\\nPLEKModelling.py).\\n-minlength    (Optional) The minimum length of sequences. The sequences whose\\nlengths are more than minlength will be processed. Default\\nvalue: 200.\\n-isoutmsg     (Optional) Output messages to stdout(screen) or not. \\\"0\\\" means\\nthat PLEKModelling be run quietly. \\\"1\\\" means that PLEKModelling\\noutputs the details of processing. Default value: 0.\\n-isrmtempfile (Optional) Remove temporary files or not. \\\"0\\\" means that PLEKModelling\\nretains temporary files. \\\"1\\\" means that PLEKModelling remove temporary\\nfiles. Default value: 1.\\n-k            (Optional) range of k. k=5 means that we will calculate usage of\\n1364 k-mer patterns. (k=1, 4 patterns; k=2, 16; k=3, 64; k=4, 256;\\nk=5, 1024; 1364=4+64+256+1024). Default value: 5.\\n-nfold        (Optional) n-fold cross-validation in search for optimal parameters.\\nDefault value: 10.\\n-isbalanced   (Optional) In the case of isbalanced=1, if the samples are\\nunbalanced, it will subsample the overrepresented class to obtain an\\nequal amount of positives and negatives.\\nDefault value: 0."
  }
  output {
    File out_stdout = stdout()
  }
}