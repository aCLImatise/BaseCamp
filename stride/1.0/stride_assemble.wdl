version 1.0

task StrideAssemble {
  input {
    Int? read_length
    Boolean? _insertsize_insert
    String? prefix
    Int? km_er_size
    Int? km_er_threshold
    Int? max_chimera
    Int? credible_overlap
    Int? min_branch_length
    Boolean? verbose
    String? out_prefix
    Int? min_overlap
    Boolean? transitive_reduction
    Int? max_edges
  }
  command <<<
    stride assemble \
      ~{if defined(read_length) then ("--read-length " +  '"' + read_length + '"') else ""} \
      ~{if (_insertsize_insert) then "-i" else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(km_er_size) then ("--kmer-size " +  '"' + km_er_size + '"') else ""} \
      ~{if defined(km_er_threshold) then ("--kmer-threshold " +  '"' + km_er_threshold + '"') else ""} \
      ~{if defined(max_chimera) then ("--max-chimera " +  '"' + max_chimera + '"') else ""} \
      ~{if defined(credible_overlap) then ("--credible-overlap " +  '"' + credible_overlap + '"') else ""} \
      ~{if defined(min_branch_length) then ("--min-branch-length " +  '"' + min_branch_length + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(min_overlap) then ("--min-overlap " +  '"' + min_overlap + '"') else ""} \
      ~{if (transitive_reduction) then "--transitive-reduction" else ""} \
      ~{if defined(max_edges) then ("--max-edges " +  '"' + max_edges + '"') else ""}
  >>>
  parameter_meta {
    read_length: "original read length"
    _insertsize_insert: ",  --insert-size               insert size of the paired-end library"
    prefix: "prefix of FM-index of paired-end reads (bwt, rbwt, sai, rsai)"
    km_er_size: "The length of the kmer to use. (default: 31)"
    km_er_threshold: "filter average kmer frequency vertex less than N (default: 3)"
    max_chimera: "maximum chimera length (default: read length(R)*2 )"
    credible_overlap: "credible overlap length (default: 80)"
    min_branch_length: "remove terminal branches only if they are less than LEN bases in length (default: 200)"
    verbose: "display verbose output"
    out_prefix: "use NAME as the prefix of the output files (output files will be NAME-contigs.fa, etc)"
    min_overlap: "only use overlaps of at least LEN. This can be used to filter"
    transitive_reduction: "remove transitive edges from the graph. Off by default."
    max_edges: "limit each vertex to a maximum of N edges. For highly repetitive regions"
  }
  output {
    File out_stdout = stdout()
  }
}