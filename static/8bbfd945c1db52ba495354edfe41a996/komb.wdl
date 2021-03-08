version 1.0

task Komb {
  input {
    Directory? output_directory
    Int? threads
    Int? km_er
    Int? num_hits
    Int? read_len
    File? reads
    Boolean? alignment
    Boolean? fast_a
    Boolean? bifrost
    Boolean? spades
  }
  command <<<
    komb \
      ~{if defined(output_directory) then ("--output " +  '"' + output_directory + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(num_hits) then ("--numhits " +  '"' + num_hits + '"') else ""} \
      ~{if defined(read_len) then ("--readlen " +  '"' + read_len + '"') else ""} \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if (alignment) then "--alignment" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (bifrost) then "--bifrost" else ""} \
      ~{if (spades) then "--spades" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/komb:1.0--py36h5202f60_0"
  }
  parameter_meta {
    output_directory: "Output directory [Default: output_yyyymmdd_hhmmss]"
    threads: "Number of Threads [Default: Max]"
    km_er: "Kmer size for Abyss, Bifrost uses 31 [Default: 31]"
    num_hits: "Bowtie2 maximum number of hits [Default: 1000]"
    read_len: "Read Length (can be average) [Default: 100]"
    reads: "(required)  Paired-read file separated by ',' [Default: read1.fq\\n,read2.fq]"
    alignment: "Keep alignment files [Default: delete alignment]"
    fast_a: "Reads provided are fasta files [Default: fastq]"
    bifrost: "Run bifrost instead of abyss [Default: run abyss]"
    spades: "Runs spades and uses GFA graph instead of bifrost + bowtie2 [Default:\\nrun abyss]"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}