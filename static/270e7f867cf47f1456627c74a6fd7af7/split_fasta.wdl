version 1.0

task SplitFasta.py {
  input {
    String? input_file_fasta
    String? threshold
    String? seq_per_fast_a
    Int? size
    String? seqs
    String? output_file_splitted
    String? output_max_lens
  }
  command <<<
    split-fasta.py \
      ~{if defined(input_file_fasta) then ("--input " +  '"' + input_file_fasta + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(seq_per_fast_a) then ("--seq_per_fasta " +  '"' + seq_per_fast_a + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if defined(seqs) then ("--seqs " +  '"' + seqs + '"') else ""} \
      ~{if defined(output_file_splitted) then ("--output " +  '"' + output_file_splitted + '"') else ""} \
      ~{if defined(output_max_lens) then ("--output-max-lens " +  '"' + output_max_lens + '"') else ""}
  >>>
  parameter_meta {
    input_file_fasta: "The input file in FASTA format."
    threshold: "Any splitted file should not have the size (in bytes) over this threshold if that is possible. If this is set to 1 then one sequence will be written in each output FASTA file. Default is 2147482648."
    seq_per_fast_a: "This is another way to split the input FASTA file by giving the number of sequences per output FASTA file. If this option is used it will over ride the '-- threshold'."
    size: "A file containing the number of nucleotides which are in the input FASTA file. If it is not given then the file size will be used."
    seqs: "A file containing the number of sequences which are in the input FASTA file. If it is not given then the file size divided by 50 will be used. It is used/needed by '--seq_per_fasta'"
    output_file_splitted: "The output file which contains the paths to the splitted FASTA files."
    output_max_lens: "The output file which contains the paths to the maximum lengths of the splitted FASTA files."
  }
}