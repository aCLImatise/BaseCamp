version 1.0

task ReadSeqSplit {
  input {
    String seq_file_splitter
    String in_file
    String outdir
    String seq_per_split
  }
  command <<<
    ReadSeq split \
      ~{seq_file_splitter} \
      ~{in_file} \
      ~{outdir} \
      ~{seq_per_split}
  >>>
  parameter_meta {
    seq_file_splitter: ""
    in_file: ""
    outdir: ""
    seq_per_split: ""
  }
  output {
    File out_stdout = stdout()
  }
}