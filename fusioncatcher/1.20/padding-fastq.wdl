version 1.0

task PaddingFastq.py {
  input {
    String inputInput
    String outputOutput
    String nucleotideNucleotide
    Int sizeSize
  }
  command <<<
    padding-fastq.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(nucleotideNucleotide) then ("--nucleotide " +  '"' + nucleotideNucleotide + '"') else ""} \
      ~{if defined(sizeSize) then ("--size " +  '"' + sizeSize + '"') else ""}
  >>>
}