version 1.0

task SplitHaplotype {
  input {
    String? range_reads_operate
    File? path_input_fasta
    String? parentkmershistogram_haplooutputfastagz
    String? cr
    Int? cl
    Boolean? report_batches_processed
    Array[String] s
    String inputs_dot
    String haplo_km_ers_dot_meryl
    String parent_km_ers_dot_histogram
    String haplo_output_dot_fasta_do_tgz
    String option_dot
  }
  command <<<
    splitHaplotype \
      ~{inputs_dot} \
      ~{haplo_km_ers_dot_meryl} \
      ~{parent_km_ers_dot_histogram} \
      ~{haplo_output_dot_fasta_do_tgz} \
      ~{option_dot} \
      ~{if defined(range_reads_operate) then ("-r " +  '"' + range_reads_operate + '"') else ""} \
      ~{if defined(path_input_fasta) then ("-R " +  '"' + path_input_fasta + '"') else ""} \
      ~{if defined(parentkmershistogram_haplooutputfastagz) then ("-H " +  '"' + parentkmershistogram_haplooutputfastagz + '"') else ""} \
      ~{if defined(cr) then ("-cr " +  '"' + cr + '"') else ""} \
      ~{if defined(cl) then ("-cl " +  '"' + cl + '"') else ""} \
      ~{if (report_batches_processed) then "-v" else ""} \
      ~{if defined(s) then ("-S " +  '"' + s + '"') else ""}
  >>>
  parameter_meta {
    range_reads_operate: "[-end]                     range of reads to operate on."
    path_input_fasta: "path to input FASTA or FASTQ of reads to classify.\\nthese may be uncompressed, gzip, bzip2 or xz compressed."
    parentkmershistogram_haplooutputfastagz: "parent-kmers.histogram haplo-output.fasta.gz"
    cr: "minimum ratio between best and second best to classify"
    cl: "minimum length of output read"
    report_batches_processed: "report how many batches per second are being processed"
    s: ""
    inputs_dot: "-S seqStore                      path to input seqStore of reads to classify."
    haplo_km_ers_dot_meryl: "- haplotype specific kmers contained in a meryl database."
    parent_km_ers_dot_histogram: "- a histogram of all parent kmers."
    haplo_output_dot_fasta_do_tgz: "- output reads assigned to this haplotype."
    option_dot: "Reads not assigned to any haplotype are written to the file specified"
  }
  output {
    File out_stdout = stdout()
  }
}