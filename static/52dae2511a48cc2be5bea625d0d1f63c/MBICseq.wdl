version 1.0

task MBICseq {
  input {
    File? input_file_name
    Float? penalty_lambda_mbicseq
    Boolean? rm
  }
  command <<<
    MBICseq \
      ~{if defined(input_file_name) then ("-i " +  '"' + input_file_name + '"') else ""} \
      ~{if defined(penalty_lambda_mbicseq) then ("-l " +  '"' + penalty_lambda_mbicseq + '"') else ""} \
      ~{if (rm) then "--rm" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file_name: ": the input file name; default stdin"
    penalty_lambda_mbicseq: ": the penalty lambda of MBIC-seq; default 1.2"
    rm: ": remove the candidate CNV regions that are common to all samples;\\nuse this only if the reference is the expected and both tumor and normal present in the binned data,\\nin which case these regions are likely to be false positives or germline CNVs\\n"
  }
  output {
    File out_stdout = stdout()
  }
}