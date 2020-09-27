version 1.0

task Wtext {
  input {
    Int? number_of_threads
    Int? total_parallel_jobs
    Int? index_run_it
    File? long_reads_file
    String? long_reads_previous_region
    String? long_reads_retained_region
    Float? overlap_files_readsttlentbegtendtreadsttlentbegtendtscoretidentityfloattmattmistinstdeltcigar
    File? output_file_extended
    Boolean? force_overwrite
    Int? alignment_penalty_match
    Int? alignment_penalty_mismatch
    Int? alignment_penalty_insertion
    Int? alignment_penalty_gap
    Int? alignment_penalty_read
    Int? maximum_extension_bp
  }
  command <<<
    wtext \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(total_parallel_jobs) then ("-P " +  '"' + total_parallel_jobs + '"') else ""} \
      ~{if defined(index_run_it) then ("-p " +  '"' + index_run_it + '"') else ""} \
      ~{if defined(long_reads_file) then ("-i " +  '"' + long_reads_file + '"') else ""} \
      ~{if defined(long_reads_previous_region) then ("-B " +  '"' + long_reads_previous_region + '"') else ""} \
      ~{if defined(long_reads_retained_region) then ("-b " +  '"' + long_reads_retained_region + '"') else ""} \
      ~{if defined(overlap_files_readsttlentbegtendtreadsttlentbegtendtscoretidentityfloattmattmistinstdeltcigar) then ("-j " +  '"' + overlap_files_readsttlentbegtendtreadsttlentbegtendtscoretidentityfloattmattmistinstdeltcigar + '"') else ""} \
      ~{if defined(output_file_extended) then ("-o " +  '"' + output_file_extended + '"') else ""} \
      ~{if (force_overwrite) then "-f" else ""} \
      ~{if defined(alignment_penalty_match) then ("-M " +  '"' + alignment_penalty_match + '"') else ""} \
      ~{if defined(alignment_penalty_mismatch) then ("-X " +  '"' + alignment_penalty_mismatch + '"') else ""} \
      ~{if defined(alignment_penalty_insertion) then ("-O " +  '"' + alignment_penalty_insertion + '"') else ""} \
      ~{if defined(alignment_penalty_gap) then ("-E " +  '"' + alignment_penalty_gap + '"') else ""} \
      ~{if defined(alignment_penalty_read) then ("-T " +  '"' + alignment_penalty_read + '"') else ""} \
      ~{if defined(maximum_extension_bp) then ("-S " +  '"' + maximum_extension_bp + '"') else ""}
  >>>
  parameter_meta {
    number_of_threads: "Number of threads, [1]"
    total_parallel_jobs: "Total parallel jobs, [1]"
    index_run_it: "Index of current job (0-based), [0]\\nSuppose to run it parallelly in 60 nodes. For node1, -P 60 -p 0; node2, -P 60 -p 1, ..."
    long_reads_file: "Long reads sequences file, + *"
    long_reads_previous_region: "Long reads previous retained region, often from wtcyc, +\\nFormat: read_name\\toffset\\tlength"
    long_reads_retained_region: "Long reads retained region, often from wtobt, +\\nFormat: read_name\\toffset\\tlength"
    overlap_files_readsttlentbegtendtreadsttlentbegtendtscoretidentityfloattmattmistinstdeltcigar: "Overlap file(s), + *\\nFormat: reads1\\t+/-\\tlen1\\tbeg1\\tend1\\treads2\\t+/-\\tlen2\\tbeg2\\tend2\\tscore\\tidentity<float>\\tmat\\tmis\\tins\\tdel\\tcigar"
    output_file_extended: "Output file of extended alignments, -:stdout, *"
    force_overwrite: "Force overwrite"
    alignment_penalty_match: "Alignment penalty: match, [2]"
    alignment_penalty_mismatch: "Alignment penalty: mismatch, [-5]"
    alignment_penalty_insertion: "Alignment penalty: insertion or deletion, [-3]"
    alignment_penalty_gap: "Alignment penalty: gap extension, [-1]"
    alignment_penalty_read: "Alignment penalty: read end clipping [-100]"
    maximum_extension_bp: "Maximum extension (bp) in each end, [400]"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_extended = "${in_output_file_extended}"
  }
}