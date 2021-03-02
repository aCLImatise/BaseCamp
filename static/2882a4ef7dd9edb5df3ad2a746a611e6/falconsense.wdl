version 1.0

task Falconsense {
  input {
    File? mandatory_path_seqstore
    File? mandatory_path_corstore
    File? output_filename_prefix
    Boolean? cns
    Boolean? fast_q
    Boolean? log
    Int? number_use_default
    Boolean? align_evidence_full
    File? only_process_reads_listed
    String? only_process_reads_inclusive
    String? cc
    Int? cl
    String? oi
    Int? ol
    String? partition
    File? export
    File? compute_using_data
    Array[String] o
  }
  command <<<
    falconsense \
      ~{if defined(mandatory_path_seqstore) then ("-S " +  '"' + mandatory_path_seqstore + '"') else ""} \
      ~{if defined(mandatory_path_corstore) then ("-C " +  '"' + mandatory_path_corstore + '"') else ""} \
      ~{if defined(output_filename_prefix) then ("-p " +  '"' + output_filename_prefix + '"') else ""} \
      ~{if (cns) then "-cns" else ""} \
      ~{if (fast_q) then "-fastq" else ""} \
      ~{if (log) then "-log" else ""} \
      ~{if defined(number_use_default) then ("-t " +  '"' + number_use_default + '"') else ""} \
      ~{if (align_evidence_full) then "-f" else ""} \
      ~{if defined(only_process_reads_listed) then ("-R " +  '"' + only_process_reads_listed + '"') else ""} \
      ~{if defined(only_process_reads_inclusive) then ("-r " +  '"' + only_process_reads_inclusive + '"') else ""} \
      ~{if defined(cc) then ("-cc " +  '"' + cc + '"') else ""} \
      ~{if defined(cl) then ("-cl " +  '"' + cl + '"') else ""} \
      ~{if defined(oi) then ("-oi " +  '"' + oi + '"') else ""} \
      ~{if defined(ol) then ("-ol " +  '"' + ol + '"') else ""} \
      ~{if defined(partition) then ("-partition " +  '"' + partition + '"') else ""} \
      ~{if defined(export) then ("-export " +  '"' + export + '"') else ""} \
      ~{if defined(compute_using_data) then ("-import " +  '"' + compute_using_data + '"') else ""} \
      ~{if defined(o) then ("-O " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/canu:2.1.1--he1b5a44_1"
  }
  parameter_meta {
    mandatory_path_seqstore: "mandatory path to seqStore"
    mandatory_path_corstore: "mandatory path to corStore"
    output_filename_prefix: "output filename prefix"
    cns: "enable primary output (to 'prefix.cns')"
    fast_q: "enable fastq output (to 'prefix.fastq')"
    log: "enable (debug) logging output (to 'prefix.log')"
    number_use_default: "number of compute threads to use (default: all)"
    align_evidence_full: "align evidence to the full read, ignore overlap position"
    only_process_reads_listed: "only process reads listed in file 'readsToCorrect'"
    only_process_reads_inclusive: "[-end]       only process reads from ID 'bgn' to 'end' (inclusive)"
    cc: "output:   minimum consensus coverage needed call a corrected base"
    cl: "output:   minimum length of corrected region to output as a corrected read"
    oi: "evidence: minimum identity of an aligned evidence read overlap"
    ol: "evidence: minimum length   of an aligned evidence read overlap"
    partition: "m R   configure jobs to fit in M GB memory with not more than R reads per batch,\\nallowing m GB memory for processing.  write output to 'prefix.batches'."
    export: "write the data used for the computation to file 'name'"
    compute_using_data: "compute using the data in file 'name'"
    o: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_filename_prefix = "${in_output_filename_prefix}"
  }
}