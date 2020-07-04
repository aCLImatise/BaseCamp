version 1.0

task Fastq2fasta.py {
  input {
    String? input_file_solexa
    String? output_fasta_file
  }
  command <<<
    fastq2fasta.py \
      ~{if defined(input_file_solexa) then ("--input " +  '"' + input_file_solexa + '"') else ""} \
      ~{if defined(output_fasta_file) then ("--output " +  '"' + output_fasta_file + '"') else ""}
  >>>
  parameter_meta {
    input_file_solexa: "The input file in FASTQ format (Solexa)."
    output_fasta_file: "The output FASTA file."
  }
}