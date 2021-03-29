version 1.0

task Fqc {
  input {
    File? fast_q
    Int? length_k_kmers
    File? creates_output_file
  }
  command <<<
    fqc \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(length_k_kmers) then ("-k " +  '"' + length_k_kmers + '"') else ""} \
      ~{if defined(creates_output_file) then ("-s " +  '"' + creates_output_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fastqc-rs:0.2.1--h374f2b1_0"
  }
  parameter_meta {
    fast_q: "The input FASTQ file to use."
    length_k_kmers: "The length k of k-mers for k-mer counting. [default: 5]"
    creates_output_file: "Creates an output file for usage with MultiQC under the given path."
  }
  output {
    File out_stdout = stdout()
    File out_creates_output_file = "${in_creates_output_file}"
  }
}