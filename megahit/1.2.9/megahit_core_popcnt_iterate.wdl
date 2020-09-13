version 1.0

task MegahitCorePopcntIterate {
  input {
    File? contig_file
    File? bubble_file
    String? read_file
    Int? num_cpu_threads
    Int? km_er_k
    Int? step
    Float? output_prefix
    String iterate
    String? opt
  }
  command <<<
    megahit_core_popcnt iterate \
      ~{iterate} \
      ~{opt} \
      ~{if defined(contig_file) then ("--contig_file " +  '"' + contig_file + '"') else ""} \
      ~{if defined(bubble_file) then ("--bubble_file " +  '"' + bubble_file + '"') else ""} \
      ~{if defined(read_file) then ("--read_file " +  '"' + read_file + '"') else ""} \
      ~{if defined(num_cpu_threads) then ("--num_cpu_threads " +  '"' + num_cpu_threads + '"') else ""} \
      ~{if defined(km_er_k) then ("--kmer_k " +  '"' + km_er_k + '"') else ""} \
      ~{if defined(step) then ("--step " +  '"' + step + '"') else ""} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""}
  >>>
  parameter_meta {
    contig_file: "(*) contigs file, fasta/fastq format, output by assembler"
    bubble_file: "(*) bubble file, fasta/fastq format, output by assembler"
    read_file: "(*) reads to be aligned. \\\"-\\\" for stdin. Can be gzip'ed."
    num_cpu_threads: "(=0)         number of cpu threads, at least 2. 0 for auto detect."
    km_er_k: "(=0)                  (*) current kmer size."
    step: "(=0)                    (*) step for iteration (<= 28). i.e. this iteration is from kmer_k to (kmer_k + step)"
    output_prefix: "(*) output_prefix.edges.0 will be created."
    iterate: ""
    opt: ""
  }
  output {
    File out_stdout = stdout()
    File out_contig_file = "${in_contig_file}"
    File out_bubble_file = "${in_bubble_file}"
  }
}