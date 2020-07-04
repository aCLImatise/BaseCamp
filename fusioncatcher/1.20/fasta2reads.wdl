version 1.0

task Fasta2reads.py {
  input {
    String? input_file_fasta
    String? output_one
    String? output_two
    String? output_three
    String? step
    String? gap
    Int? length
    String? snp
  }
  command <<<
    fasta2reads.py \
      ~{if defined(input_file_fasta) then ("--input " +  '"' + input_file_fasta + '"') else ""} \
      ~{if defined(output_one) then ("--output1 " +  '"' + output_one + '"') else ""} \
      ~{if defined(output_two) then ("--output2 " +  '"' + output_two + '"') else ""} \
      ~{if defined(output_three) then ("--output3 " +  '"' + output_three + '"') else ""} \
      ~{if defined(step) then ("--step " +  '"' + step + '"') else ""} \
      ~{if defined(gap) then ("--gap " +  '"' + gap + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(snp) then ("--snp " +  '"' + snp + '"') else ""}
  >>>
  parameter_meta {
    input_file_fasta: "The input file in FASTA format."
    output_one: "The output file in FASTQ format."
    output_two: "The output file in FASTQ format."
    output_three: "The output file in FASTA format."
    step: "Step for the sliding window. Default is 1."
    gap: "Size of the gap between the reads. Default is 50."
    length: "Length of the reads. Default is 100."
    snp: "Percentage of SNPs to be generated. If set to 1 then it will generate a SNP every 100 nucleotides. If set to 0 then no SNPs are generated. Default is 0."
  }
}