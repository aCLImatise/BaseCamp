version 1.0

task DeblurDeblurseqs {
  input {
    Float? mean_error
    Int? error_dist
    Float? in_del_prob
    Int? in_del_max
    Int? log_level
    File? log_file
    String seqs_fp
  }
  command <<<
    deblur deblur_seqs \
      ~{seqs_fp} \
      ~{if defined(mean_error) then ("--mean-error " +  '"' + mean_error + '"') else ""} \
      ~{if defined(error_dist) then ("--error-dist " +  '"' + error_dist + '"') else ""} \
      ~{if defined(in_del_prob) then ("--indel-prob " +  '"' + in_del_prob + '"') else ""} \
      ~{if defined(in_del_max) then ("--indel-max " +  '"' + in_del_max + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mean_error: "The mean per nucleotide error, used for original\\nsequence estimate. If not passed typical illumina\\nerror rate is used  [default: 0.005]"
    error_dist: "A comma separated list of error probabilities for\\neach hamming distance. The length of the list\\ndetermines the number of hamming distances taken\\ninto account.  [default: 1, 0.06, 0.02, 0.02,\\n0.01, 0.005, 0.005, 0.005, 0.001, 0.001, 0.001,\\n0.0005]"
    in_del_prob: "Insertion/deletion (indel) probability (same for\\nN indels)"
    in_del_max: "Maximal indel number"
    log_level: "RANGE  Level of messages for log file(range 1-debug to"
    log_file: "log file name  [default: deblur.log]"
    seqs_fp: ""
  }
  output {
    File out_stdout = stdout()
  }
}