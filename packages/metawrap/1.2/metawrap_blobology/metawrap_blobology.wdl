version 1.0

task MetawrapBlobology {
  input {
    File? assembly_fasta_file
    Directory? output_directory
    Int? number_of_threads
    Boolean? subs_amble
    Boolean? bins
    Int reads_a_one_dot_fast_q
    Int reads_a_two_dot_fast_q
    Int? reads_b_two_dot_fast_q
  }
  command <<<
    metawrap blobology \
      ~{reads_a_one_dot_fast_q} \
      ~{reads_a_two_dot_fast_q} \
      ~{reads_b_two_dot_fast_q} \
      ~{if defined(assembly_fasta_file) then ("-a " +  '"' + assembly_fasta_file + '"') else ""} \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if (subs_amble) then "--subsamble" else ""} \
      ~{if (bins) then "--bins" else ""}
  >>>
  parameter_meta {
    assembly_fasta_file: "assembly fasta file"
    output_directory: "output directory"
    number_of_threads: "number of threads"
    subs_amble: "INT     Number of contigs to run blobology on. Subsampling is randomized. (default=ALL)"
    bins: "STR     Folder containing bins. Contig names must match those of the assembly file. (default=None)"
    reads_a_one_dot_fast_q: ""
    reads_a_two_dot_fast_q: ""
    reads_b_two_dot_fast_q: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}