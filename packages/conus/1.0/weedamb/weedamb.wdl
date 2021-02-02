version 1.0

task Weedamb {
  input {
    File? save_ambiguous_sequences
    String seq_file_in
  }
  command <<<
    weedamb \
      ~{seq_file_in} \
      ~{if defined(save_ambiguous_sequences) then ("-s " +  '"' + save_ambiguous_sequences + '"') else ""}
  >>>
  parameter_meta {
    save_ambiguous_sequences: ": save ambiguous sequences to this file"
    seq_file_in: ""
  }
  output {
    File out_stdout = stdout()
  }
}