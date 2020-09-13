version 1.0

task Mashmap {
  input {
    File? ref
    File? ref_list
    File? query
    File? query_list
    Int? seg_length
    Boolean? no_split
    Int? perc_identity
    Int? threads
    File? output_file_name
    Int? km_er
    String? filter_mode
  }
  command <<<
    mashmap \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(ref_list) then ("--refList " +  '"' + ref_list + '"') else ""} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(query_list) then ("--queryList " +  '"' + query_list + '"') else ""} \
      ~{if defined(seg_length) then ("--segLength " +  '"' + seg_length + '"') else ""} \
      ~{if (no_split) then "--noSplit" else ""} \
      ~{if defined(perc_identity) then ("--perc_identity " +  '"' + perc_identity + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(filter_mode) then ("--filter_mode " +  '"' + filter_mode + '"') else ""}
  >>>
  parameter_meta {
    ref: "an input reference file (fasta/fastq)[.gz]"
    ref_list: "a file containing list of reference files, one per line"
    query: "an input query file (fasta/fastq)[.gz]"
    query_list: "a file containing list of query files, one per line"
    seg_length: "mapping segment length [default : 5,000]\\nsequences shorter than segment length will be ignored"
    no_split: "disable splitting of input sequences during mapping [enabled by default]"
    perc_identity: "threshold for identity [default : 85]"
    threads: "count of threads for parallel execution [default : 1]"
    output_file_name: "output file name [default : mashmap.out]"
    km_er: "kmer size <= 16 [default : 16]"
    filter_mode: "filter modes in mashmap: 'map', 'one-to-one' or 'none' [default: map]\\n'map' computes best mappings for each query sequence\\n'one-to-one' computes best mappings for query as well as reference sequence\\n'none' disables filtering\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}