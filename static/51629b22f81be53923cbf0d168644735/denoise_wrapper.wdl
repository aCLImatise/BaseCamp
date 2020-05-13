version 1.0

task DenoiseWrapper.py {
  input {
    String inputInputFile
    String fastFastAFile
  }
  command <<<
    denoise_wrapper.py \
      ~{if defined(inputInputFile) then ("--input_file " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(fastFastAFile) then ("--fasta_file " +  '"' + fastFastAFile + '"') else ""}
  >>>
}