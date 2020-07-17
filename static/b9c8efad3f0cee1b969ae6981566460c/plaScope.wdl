version 1.0

task PlaScope.sh {
  input {
    Boolean? no_banner
    Boolean? number_of_threads
    Boolean? output_directory
    Boolean? sample
    Boolean? db_dir
    Boolean? db_name
    Boolean? forward_pairedend_reads
    Boolean? reverse_pairedend_reads
    Boolean? fast_a
    String? arguments
  }
  command <<<
    plaScope.sh \
      ~{arguments} \
      ~{true="--no-banner" false="" no_banner} \
      ~{true="-t" false="" number_of_threads} \
      ~{true="-o" false="" output_directory} \
      ~{true="--sample" false="" sample} \
      ~{true="--db_dir" false="" db_dir} \
      ~{true="--db_name" false="" db_name} \
      ~{true="-1" false="" forward_pairedend_reads} \
      ~{true="-2" false="" reverse_pairedend_reads} \
      ~{true="--fasta" false="" fast_a}
  >>>
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
}