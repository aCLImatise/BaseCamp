version 1.0

task Spindex {
  input {
    Boolean? display_version_information
    Boolean? arg_kmer_size
    Boolean? arg_path_fasta
    Boolean? arg_number_processor
  }
  command <<<
    spindex \
      ~{true="-v" false="" display_version_information} \
      ~{true="-k" false="" arg_kmer_size} \
      ~{true="-d" false="" arg_path_fasta} \
      ~{true="-p" false="" arg_number_processor}
  >>>
  parameter_meta {
    display_version_information: "[ --version ]             display version information"
    arg_kmer_size: "[ --kmersize ] arg (=8)   K-mer size"
    arg_path_fasta: "[ --database ] arg        path to the fasta format reference sequence  database"
    arg_number_processor: "[ --processors ] arg (=1) number of processor threads"
  }
}