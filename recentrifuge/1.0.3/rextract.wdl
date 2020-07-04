version 1.0

task Rextract {
  input {
    Boolean? debug
    File? file
    String? limit
    String? max_reads
    File? nodes_path
    String? include
    String? exclude
    String? min_score
    File? fast_q
    File? mate_one
    File? mate_two
    Boolean? v
  }
  command <<<
    rextract \
      ~{true="--debug" false="" debug} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if defined(max_reads) then ("--maxreads " +  '"' + max_reads + '"') else ""} \
      ~{if defined(nodes_path) then ("--nodespath " +  '"' + nodes_path + '"') else ""} \
      ~{if defined(include) then ("--include " +  '"' + include + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(min_score) then ("--minscore " +  '"' + min_score + '"') else ""} \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(mate_one) then ("--mate1 " +  '"' + mate_one + '"') else ""} \
      ~{if defined(mate_two) then ("--mate2 " +  '"' + mate_two + '"') else ""} \
      ~{true="-V" false="" v}
  >>>
  parameter_meta {
    debug: "increase output verbosity and perform additional checks"
    file: "Centrifuge output file."
    limit: "Limit of FASTQ reads to extract. Default: no limit"
    max_reads: "Maximum number of FASTQ reads to search for the taxa. Default: no maximum"
    nodes_path: "path for the nodes information files (nodes.dmp and names.dmp from NCBI)"
    include: "NCBI taxid code to include a taxon and all underneath (multiple -i is available to include several taxid). By default all the taxa is considered for inclusion."
    exclude: "NCBI taxid code to exclude a taxon and all underneath (multiple -x is available to exclude several taxid)"
    min_score: "minimum score/confidence of the classification of a read to pass the quality filter; all pass by default"
    fast_q: "Single FASTQ file (no paired-ends)"
    mate_one: "Paired-ends FASTQ file for mate 1s (filename usually includes _1)"
    mate_two: "Paired-ends FASTQ file for mate 2s (filename usually includes _2)"
    v: ""
  }
}