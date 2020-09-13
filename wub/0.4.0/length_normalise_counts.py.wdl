version 1.0

task LengthNormaliseCountspy {
  input {
    String? input_transcriptome
  }
  command <<<
    length_normalise_counts_py \
      ~{if defined(input_transcriptome) then ("-f " +  '"' + input_transcriptome + '"') else ""}
  >>>
  parameter_meta {
    input_transcriptome: "Input transcriptome."
  }
  output {
    File out_stdout = stdout()
  }
}