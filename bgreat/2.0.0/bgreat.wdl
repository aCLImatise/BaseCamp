version 1.0

task Bgreat {
  input {
    File? file_unpaired
    File? file_paired
    String? value_used_graph
    File? file_unitigfa
    File? file_paths
    File? read_file_fastq
    String? keep_order_reads
    Int? length
    Int? of_missmatch_allowed
    Int? of_threads_used
    String? output_corrected_reads
    File? compress_output_file
    Int? fraction_indexed_default
    String? output_compressed_reads
    String? more_precise_output
    String? print_the_alignments
    String? output_all_possible_mapping
    String? output_possible_optimal_mapping
    Int? occurence_of_anchor
    Int? put_in_mapping
    String? output_optimal_mapping
  }
  command <<<
    bgreat \
      ~{if defined(file_unpaired) then ("-u " +  '"' + file_unpaired + '"') else ""} \
      ~{if defined(file_paired) then ("-x " +  '"' + file_paired + '"') else ""} \
      ~{if defined(value_used_graph) then ("-k " +  '"' + value_used_graph + '"') else ""} \
      ~{if defined(file_unitigfa) then ("-g " +  '"' + file_unitigfa + '"') else ""} \
      ~{if defined(file_paths) then ("-f " +  '"' + file_paths + '"') else ""} \
      ~{if defined(read_file_fastq) then ("-q " +  '"' + read_file_fastq + '"') else ""} \
      ~{if defined(keep_order_reads) then ("-O " +  '"' + keep_order_reads + '"') else ""} \
      ~{if defined(length) then ("-a " +  '"' + length + '"') else ""} \
      ~{if defined(of_missmatch_allowed) then ("-m " +  '"' + of_missmatch_allowed + '"') else ""} \
      ~{if defined(of_threads_used) then ("-t " +  '"' + of_threads_used + '"') else ""} \
      ~{if defined(output_corrected_reads) then ("-c " +  '"' + output_corrected_reads + '"') else ""} \
      ~{if defined(compress_output_file) then ("-z " +  '"' + compress_output_file + '"') else ""} \
      ~{if defined(fraction_indexed_default) then ("-i " +  '"' + fraction_indexed_default + '"') else ""} \
      ~{if defined(output_compressed_reads) then ("-C " +  '"' + output_compressed_reads + '"') else ""} \
      ~{if defined(more_precise_output) then ("-p " +  '"' + more_precise_output + '"') else ""} \
      ~{if defined(print_the_alignments) then ("-P " +  '"' + print_the_alignments + '"') else ""} \
      ~{if defined(output_all_possible_mapping) then ("-A " +  '"' + output_all_possible_mapping + '"') else ""} \
      ~{if defined(output_possible_optimal_mapping) then ("-B " +  '"' + output_possible_optimal_mapping + '"') else ""} \
      ~{if defined(occurence_of_anchor) then ("-o " +  '"' + occurence_of_anchor + '"') else ""} \
      ~{if defined(put_in_mapping) then ("-e " +  '"' + put_in_mapping + '"') else ""} \
      ~{if defined(output_optimal_mapping) then ("-F " +  '"' + output_optimal_mapping + '"') else ""}
  >>>
  parameter_meta {
    file_unpaired: "file (unpaired)"
    file_paired: "file (paired)"
    value_used_graph: "value used for graph"
    file_unitigfa: "file (unitig.fa)"
    file_paths: "file (paths)"
    read_file_fastq: "read file are FASTQ"
    keep_order_reads: "keep order of the reads"
    length: "length (31)"
    of_missmatch_allowed: "of missmatch allowed (5)"
    of_threads_used: "of threads used (1)"
    output_corrected_reads: "output corrected reads"
    compress_output_file: "compress output file"
    fraction_indexed_default: "fraction to be indexed (default 1=all, 5 for one out of 5)"
    output_compressed_reads: "output compressed reads"
    more_precise_output: "more precise output"
    print_the_alignments: "print the alignments"
    output_all_possible_mapping: "output all possible mapping"
    output_possible_optimal_mapping: "output all possible optimal mapping"
    occurence_of_anchor: "occurence of an anchor (1)"
    put_in_mapping: "put in mapping (1000)"
    output_optimal_mapping: "output any optimal mapping"
  }
  output {
    File out_stdout = stdout()
    File out_compress_output_file = "${in_compress_output_file}"
  }
}