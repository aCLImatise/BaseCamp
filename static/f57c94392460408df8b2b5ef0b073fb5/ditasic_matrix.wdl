version 1.0

task DitasicMatrix.py {
  input {
    String? start_prob
    String? avg_prob
    String? end_prob
    String? prob_file
    Int? length
    String? number_reads_sampled
    String? index
    String? temp
    Boolean? skip
    String? output_similarity_matrix
    File files
  }
  command <<<
    ditasic_matrix.py \
      ~{files} \
      ~{if defined(start_prob) then ("--startprob " +  '"' + start_prob + '"') else ""} \
      ~{if defined(avg_prob) then ("--avgprob " +  '"' + avg_prob + '"') else ""} \
      ~{if defined(end_prob) then ("--endprob " +  '"' + end_prob + '"') else ""} \
      ~{if defined(prob_file) then ("--prob-file " +  '"' + prob_file + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(number_reads_sampled) then ("-n " +  '"' + number_reads_sampled + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{true="--skip" false="" skip} \
      ~{if defined(output_similarity_matrix) then ("--output " +  '"' + output_similarity_matrix + '"') else ""}
  >>>
  parameter_meta {
    start_prob: "Mismatch probability at the first base."
    avg_prob: "Average per base mismatch probability."
    end_prob: "Mismatch probability at the last base."
    prob_file: "File with mismatch (start, avg, end) probabilities for each reference."
    length: "Length of reads used in similarity matrix creation (Required)."
    number_reads_sampled: "Number of reads sampled from each reference. [default: 250000]"
    index: "Path to existing kallisto index for all files (has to be constructed in same order as the paths in FILES)."
    temp: "Directory to store temporary simulated datasets and TSV files. [default: ./temp]"
    skip: "Skip read simulation (assume existing reads in temp) [default: False]."
    output_similarity_matrix: "Output similarity matrix file. [default: similarity_matrix.npy]"
    files: ""
  }
}