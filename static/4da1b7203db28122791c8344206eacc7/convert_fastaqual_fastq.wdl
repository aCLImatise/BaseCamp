version 1.0

task ConvertFastaqualFastq.py {
  input {
    String fastFastAFilePath
  }
  command <<<
    convert_fastaqual_fastq.py \
      ~{if defined(fastFastAFilePath) then ("--fasta_file_path " +  '"' + fastFastAFilePath + '"') else ""}
  >>>
}