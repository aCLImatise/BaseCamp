version 1.0

task RNAsnp {
  input {
    Boolean? detailed_help
    Boolean? full_help
    String? seq
    String? snp
    Int? mode
    Int? winsize_fold
  }
  command <<<
    RNAsnp \
      ~{true="--detailed-help" false="" detailed_help} \
      ~{true="--full-help" false="" full_help} \
      ~{if defined(seq) then ("--seq " +  '"' + seq + '"') else ""} \
      ~{if defined(snp) then ("--snp " +  '"' + snp + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(winsize_fold) then ("--winsizeFold " +  '"' + winsize_fold + '"') else ""}
  >>>
  parameter_meta {
    detailed_help: "Print help, including all details and hidden options, and exit"
    full_help: "Print help, including hidden options, and exit"
    seq: "File containing the input sequence"
    snp: "File containing the list of SNP"
    mode: "Select the mode of operation (default=`1') 1 - perform global folding by using RNAfold and compute the difference in base pair probabilities for all sequence intervals 2 - perform local folding by using RNAplfold and compute the difference in base pair probabilities for all sequence intervals of fixed length 3 - screen putative structure-disruptive SNPs in an RNA sequence"
    winsize_fold: "length of flanking sequence on either side of SNP to fold  (default=`200')"
  }
}