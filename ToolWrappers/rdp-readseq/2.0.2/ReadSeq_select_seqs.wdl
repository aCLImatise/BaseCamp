version 1.0

task ReadSeqSelectseqs {
  input {
    String sequence_selector
    String ids_file
    String outfile
    String output_format
    String keep
    String? y_vertical_linen
    String seq_file
  }
  command <<<
    ReadSeq select_seqs \
      ~{sequence_selector} \
      ~{ids_file} \
      ~{outfile} \
      ~{output_format} \
      ~{keep} \
      ~{y_vertical_linen} \
      ~{seq_file}
  >>>
  parameter_meta {
    sequence_selector: ""
    ids_file: ""
    outfile: ""
    output_format: ""
    keep: ""
    y_vertical_linen: ""
    seq_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}