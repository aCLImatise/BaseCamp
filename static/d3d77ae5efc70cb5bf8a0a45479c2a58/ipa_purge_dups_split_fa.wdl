version 1.0

task IpaPurgeDupsSplitFa {
  input {
    Boolean? bool_block_split
    String? options
    String stat
  }
  command <<<
    ipa_purge_dups_split_fa \
      ~{options} \
      ~{stat} \
      ~{if (bool_block_split) then "-n" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pbipa:1.3.2--hee625c5_0"
  }
  parameter_meta {
    bool_block_split: "BOOL    block split by N"
    options: ""
    stat: ""
  }
  output {
    File out_stdout = stdout()
  }
}