version 1.0

task Fastq2fasta.py {
  input {
    String inputInput
    String outputOutput
  }
  command <<<
    fastq2fasta.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}