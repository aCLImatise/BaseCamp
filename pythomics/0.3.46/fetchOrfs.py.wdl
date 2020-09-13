version 1.0

task FetchOrfspy {
  input {
    Int? threads_run_default
    Boolean? fasta_file_operate
    File? file_write_results
    Int? min
    Boolean? both_strands
    Boolean? no_met_start
    Boolean? from_met
    Boolean? from_met_keep
    String? fast_a
    String? out
  }
  command <<<
    fetchOrfs_py \
      ~{fast_a} \
      ~{out} \
      ~{if defined(threads_run_default) then ("-p " +  '"' + threads_run_default + '"') else ""} \
      ~{if (fasta_file_operate) then "-f" else ""} \
      ~{if (file_write_results) then "-o" else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if (both_strands) then "--both-strands" else ""} \
      ~{if (no_met_start) then "--no-met-start" else ""} \
      ~{if (from_met) then "--from-met" else ""} \
      ~{if (from_met_keep) then "--from-met-keep" else ""}
  >>>
  parameter_meta {
    threads_run_default: "Threads to run (default: 1)"
    fasta_file_operate: "[FASTA], --fasta [FASTA]\\nThe fasta file to operate on. (default: None)"
    file_write_results: "[OUT], --out [OUT]\\nThe file to write results to. Leave blank for stdout,\\n(default: <_io.TextIOWrapper name='<stdout>' mode='w'\\nencoding='utf-8'>)"
    min: "Minimum ORF length in amino acids. (default: 50)"
    both_strands: "Search both strands for ORFs. (default: False)"
    no_met_start: "Output ORFs starting with amino acids other than MET\\n(default: False)"
    from_met: "Truncate leading amino acids up to MET (default:\\nFalse)"
    from_met_keep: "Truncate leading amino acids up to MET, but keep the\\nuntruncated version as well. (default: False)\\n"
    fast_a: ""
    out: ""
  }
  output {
    File out_stdout = stdout()
    File out_file_write_results = "${in_file_write_results}"
  }
}