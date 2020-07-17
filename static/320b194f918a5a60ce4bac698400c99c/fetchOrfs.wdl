version 1.0

task FetchOrfs.py {
  input {
    String? threads_run_default
    Boolean? fasta_file_operate
    Boolean? file_write_results
    Int? min
    Boolean? both_strands
    Boolean? no_met_start
    Boolean? from_met
    Boolean? from_met_keep
    String? fast_a
    String? out
  }
  command <<<
    fetchOrfs.py \
      ~{fast_a} \
      ~{out} \
      ~{if defined(threads_run_default) then ("-p " +  '"' + threads_run_default + '"') else ""} \
      ~{true="-f" false="" fasta_file_operate} \
      ~{true="-o" false="" file_write_results} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{true="--both-strands" false="" both_strands} \
      ~{true="--no-met-start" false="" no_met_start} \
      ~{true="--from-met" false="" from_met} \
      ~{true="--from-met-keep" false="" from_met_keep}
  >>>
  parameter_meta {
    threads_run_default: "Threads to run (default: 1)"
    fasta_file_operate: "[FASTA], --fasta [FASTA] The fasta file to operate on. (default: None)"
    file_write_results: "[OUT], --out [OUT] The file to write results to. Leave blank for stdout, (default: <_io.TextIOWrapper name='<stdout>' mode='w' encoding='utf-8'>)"
    min: "Minimum ORF length in amino acids. (default: 50)"
    both_strands: "Search both strands for ORFs. (default: False)"
    no_met_start: "Output ORFs starting with amino acids other than MET (default: False)"
    from_met: "Truncate leading amino acids up to MET (default: False)"
    from_met_keep: "Truncate leading amino acids up to MET, but keep the untruncated version as well. (default: False)"
    fast_a: ""
    out: ""
  }
}