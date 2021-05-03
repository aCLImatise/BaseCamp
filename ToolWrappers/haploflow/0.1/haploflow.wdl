version 1.0

task Haploflow {
  input {
    File? read_file
    File? dump_file
    Int? kmer_size_default
    File? create_dump
    String? from_dump
    Int? strict
    Int? filter
    Int? thresh
    String haplo_flow
    Int number
    String overwritten
    String graph_dot
  }
  command <<<
    haploflow \
      ~{haplo_flow} \
      ~{number} \
      ~{overwritten} \
      ~{graph_dot} \
      ~{if defined(read_file) then ("--read-file " +  '"' + read_file + '"') else ""} \
      ~{if defined(dump_file) then ("--dump-file " +  '"' + dump_file + '"') else ""} \
      ~{if defined(kmer_size_default) then ("--k " +  '"' + kmer_size_default + '"') else ""} \
      ~{if defined(create_dump) then ("--create-dump " +  '"' + create_dump + '"') else ""} \
      ~{if defined(from_dump) then ("--from-dump " +  '"' + from_dump + '"') else ""} \
      ~{if defined(strict) then ("--strict " +  '"' + strict + '"') else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{if defined(thresh) then ("--thresh " +  '"' + thresh + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/haploflow:0.1--hee3b9ab_0"
  }
  parameter_meta {
    read_file: "read file (fastq)"
    dump_file: "deBruijn graph dump file produced by"
    kmer_size_default: "(=41)                    k-mer size, default 41, please use an odd"
    create_dump: "create dump of the deBruijn graph. WARNING:\\nThis file may be huge"
    from_dump: "run from a Haploflow dump of the deBruijn"
    strict: "(=1)                more strict error correction, should be set\\nto 5 in first run on new data set to reduce\\nrun time. Set to 0 if low abundant strains\\nare expected to be present"
    filter: "(=500)              filter contigs shorter than value"
    thresh: "(=-1)               Provide a custom threshold for complex/bad\\ndata\\n"
    haplo_flow: "--log arg                        log file (default: standard out)"
    number: "--out arg                        folder for output, will be created if not "
    overwritten: "--error-rate arg (=0.0199999996) percentage filter for erroneous kmers - "
    graph_dot: "--two-strain arg (=0)            mode for known two-strain mixtures"
  }
  output {
    File out_stdout = stdout()
  }
}