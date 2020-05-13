version 1.0

task FilterAlignment.py {
  input {
    String inputInputFastAFile
  }
  command <<<
    filter_alignment.py \
      ~{if defined(inputInputFastAFile) then ("--input_fasta_file " +  '"' + inputInputFastAFile + '"') else ""}
  >>>
}