version 1.0

task DeblurDeblurSeqs {
  input {
    Float? mean_error
    String? error_dist
    Float? in_del_prob
    Int? in_del_max
    Int? log_level
    File? log_file
    String seqs_fp
  }
  command <<<
    deblur deblur-seqs \
      ~{seqs_fp} \
      ~{if defined(mean_error) then ("--mean-error " +  '"' + mean_error + '"') else ""} \
      ~{if defined(error_dist) then ("--error-dist " +  '"' + error_dist + '"') else ""} \
      ~{if defined(in_del_prob) then ("--indel-prob " +  '"' + in_del_prob + '"') else ""} \
      ~{if defined(in_del_max) then ("--indel-max " +  '"' + in_del_max + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    mean_error: "The mean per nucleotide error, used for original sequence estimate. If not passed typical illumina error rate is used  [default: 0.005]"
    error_dist: "A comma separated list of error probabilities for each hamming distance. The length of the list determines the number of hamming distances taken into account.  [default: 1, 0.06, 0.02, 0.02, 0.01, 0.005, 0.005, 0.005, 0.001, 0.001, 0.001, 0.0005]"
    in_del_prob: "Insertion/deletion (indel) probability (same for N indels)"
    in_del_max: "Maximal indel number"
    log_level: "RANGE  Level of messages for log file(range 1-debug to 5-critical  [default: 2]"
    log_file: "log file name  [default: deblur.log]"
    seqs_fp: ""
  }
}