version 1.0

task Prophasm {
  input {
    Int? kmer_size
    File? input_fasta_file
    File? output_fasta_file
    File? compute_intersection_subtract
    File? output_file_kmer
    Boolean? silent_mode
  }
  command <<<
    prophasm \
      ~{if defined(kmer_size) then ("-k " +  '"' + kmer_size + '"') else ""} \
      ~{if defined(input_fasta_file) then ("-i " +  '"' + input_fasta_file + '"') else ""} \
      ~{if defined(output_fasta_file) then ("-o " +  '"' + output_fasta_file + '"') else ""} \
      ~{if defined(compute_intersection_subtract) then ("-x " +  '"' + compute_intersection_subtract + '"') else ""} \
      ~{if defined(output_file_kmer) then ("-s " +  '"' + output_file_kmer + '"') else ""} \
      ~{true="-S" false="" silent_mode}
  >>>
  parameter_meta {
    kmer_size: "K-mer size."
    input_fasta_file: "Input FASTA file (can be used multiple times)."
    output_fasta_file: "Output FASTA file (if used, must be used as many times as -i)."
    compute_intersection_subtract: "Compute intersection, subtract it, save it."
    output_file_kmer: "Output file with k-mer statistics."
    silent_mode: "Silent mode."
  }
}