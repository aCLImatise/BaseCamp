version 1.0

task SplitFa {
  input {
    Boolean? bool_block_split
    String? options
    String stat
  }
  command <<<
    split_fa \
      ~{options} \
      ~{stat} \
      ~{if (bool_block_split) then "-n" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/purge_dups:1.2.5--hed695b0_0"
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