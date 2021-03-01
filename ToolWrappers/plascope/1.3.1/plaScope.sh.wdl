version 1.0

task PlaScopesh {
  input {
    Boolean? no_banner
    Boolean? number_of_threads
    Directory? output_directory
    Boolean? sample
    Boolean? db_dir
    Boolean? db_name
    Boolean? forward_pairedend_reads
    Boolean? reverse_pairedend_reads
    Boolean? fast_a
    String? arguments
  }
  command <<<
    plaScope_sh \
      ~{arguments} \
      ~{if (no_banner) then "--no-banner" else ""} \
      ~{if (number_of_threads) then "-t" else ""} \
      ~{if (output_directory) then "-o" else ""} \
      ~{if (sample) then "--sample" else ""} \
      ~{if (db_dir) then "--db_dir" else ""} \
      ~{if (db_name) then "--db_name" else ""} \
      ~{if (forward_pairedend_reads) then "-1" else ""} \
      ~{if (reverse_pairedend_reads) then "-2" else ""} \
      ~{if (fast_a) then "--fasta" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_banner: "don't print beautiful banners"
    number_of_threads: "number of threads[OPTIONAL] [default : 8]"
    output_directory: "output directory [OPTIONAL] [default : current directory]"
    sample: "Sample name [MANDATORY]"
    db_dir: "path to centrifuge database [MANDATORY]"
    db_name: "centrifuge database name [MANDATORY]"
    forward_pairedend_reads: "forward paired-end reads [MANDATORY]"
    reverse_pairedend_reads: "reverse paired-end reads [MANDATORY]"
    fast_a: "SPAdes assembly fasta file [MANDATORY]"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}