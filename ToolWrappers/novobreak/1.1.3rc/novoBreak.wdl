version 1.0

task NovoBreak {
  input {
    File? tumor_bam_file
    File? normal_bam_file
    File? reference_file_fasta
    Int? kmer_size_
    String? output_kmer
    Int? output_germline_events
    Int? minimum_kmer_count
  }
  command <<<
    novoBreak \
      ~{if defined(tumor_bam_file) then ("-i " +  '"' + tumor_bam_file + '"') else ""} \
      ~{if defined(normal_bam_file) then ("-c " +  '"' + normal_bam_file + '"') else ""} \
      ~{if defined(reference_file_fasta) then ("-r " +  '"' + reference_file_fasta + '"') else ""} \
      ~{if defined(kmer_size_) then ("-k " +  '"' + kmer_size_ + '"') else ""} \
      ~{if defined(output_kmer) then ("-o " +  '"' + output_kmer + '"') else ""} \
      ~{if defined(output_germline_events) then ("-g " +  '"' + output_germline_events + '"') else ""} \
      ~{if defined(minimum_kmer_count) then ("-m " +  '"' + minimum_kmer_count + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tumor_bam_file: "Tumor bam file"
    normal_bam_file: "Normal bam file"
    reference_file_fasta: "Reference file in fasta format"
    kmer_size_: "Kmer size, <=31 [31]"
    output_kmer: "Output kmer"
    output_germline_events: "Output germline events [0]"
    minimum_kmer_count: "Minimum kmer count regarded as novo kmers [3]"
  }
  output {
    File out_stdout = stdout()
  }
}