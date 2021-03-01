version 1.0

task FastANI {
  input {
    String? ref
    File? ref_list
    String? query
    File? query_list
    Int? km_er
    Int? threads
    Int? fra_glen
    Int? min_fraction
    Boolean? visualize
    File? matrix
    File? output_file_name
  }
  command <<<
    fastANI \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(ref_list) then ("--refList " +  '"' + ref_list + '"') else ""} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(query_list) then ("--queryList " +  '"' + query_list + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(fra_glen) then ("--fragLen " +  '"' + fra_glen + '"') else ""} \
      ~{if defined(min_fraction) then ("--minFraction " +  '"' + min_fraction + '"') else ""} \
      ~{if (visualize) then "--visualize" else ""} \
      ~{if (matrix) then "--matrix" else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ref: "reference genome (fasta/fastq)[.gz]"
    ref_list: "a file containing list of reference genome files, one genome per line"
    query: "query genome (fasta/fastq)[.gz]"
    query_list: "a file containing list of query genome files, one genome per line"
    km_er: "kmer size <= 16 [default : 16]"
    threads: "thread count for parallel execution [default : 1]"
    fra_glen: "fragment length [default : 3,000]"
    min_fraction: "minimum fraction of genome that must be shared for trusting ANI. If\\nreference and query genome size differ, smaller one among the two is\\nconsidered. [default : 0.2]"
    visualize: "output mappings for visualization, can be enabled for single genome to\\nsingle genome comparison only [disabled by default]"
    matrix: "also output ANI values as lower triangular matrix (format inspired from\\nphylip). If enabled, you should expect an output file with .matrix\\nextension [disabled by default]"
    output_file_name: "[required]\\noutput file name"
  }
  output {
    File out_stdout = stdout()
    File out_matrix = "${in_matrix}"
    File out_output_file_name = "${in_output_file_name}"
  }
}