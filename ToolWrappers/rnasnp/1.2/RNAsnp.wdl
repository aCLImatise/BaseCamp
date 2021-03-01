version 1.0

task RNAsnp {
  input {
    Boolean? detailed_help
    Boolean? full_help
    File? seq
    File? snp
    Int? mode
    Int? winsize_fold
  }
  command <<<
    RNAsnp \
      ~{if (detailed_help) then "--detailed-help" else ""} \
      ~{if (full_help) then "--full-help" else ""} \
      ~{if defined(seq) then ("--seq " +  '"' + seq + '"') else ""} \
      ~{if defined(snp) then ("--snp " +  '"' + snp + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(winsize_fold) then ("--winsizeFold " +  '"' + winsize_fold + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    detailed_help: "Print help, including all details and hidden\\noptions, and exit"
    full_help: "Print help, including hidden options, and exit"
    seq: "File containing the input sequence"
    snp: "File containing the list of SNP"
    mode: "Select the mode of operation (default=`1')\\n1 - perform global folding by using RNAfold\\nand compute the difference in base pair\\nprobabilities for all sequence intervals\\n2 - perform local folding by using RNAplfold\\nand compute the difference in base pair\\nprobabilities for all sequence intervals of\\nfixed length\\n3 - screen putative structure-disruptive SNPs\\nin an RNA sequence"
    winsize_fold: "length of flanking sequence on either side of\\nSNP to fold  (default=`200')"
  }
  output {
    File out_stdout = stdout()
  }
}