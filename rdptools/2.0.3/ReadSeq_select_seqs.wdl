version 1.0

task ReadSeqSelectSeqs {
  input {
    String? seq_length
    String ids_file
    String outfile
    String output_format
    String keep
    String? y_vertical_linen
    String seq_file
  }
  command <<<
    ReadSeq select-seqs \
      ~{ids_file} \
      ~{outfile} \
      ~{output_format} \
      ~{keep} \
      ~{y_vertical_linen} \
      ~{seq_file} \
      ~{if defined(seq_length) then ("--seq_length " +  '"' + seq_length + '"') else ""}
  >>>
  parameter_meta {
    seq_length: "minimum length of sequence"
    ids_file: ""
    outfile: ""
    output_format: ""
    keep: ""
    y_vertical_linen: ""
    seq_file: ""
  }
}