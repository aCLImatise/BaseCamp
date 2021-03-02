version 1.0

task FastenValidate {
  input {
    Int? num_cpus
    Boolean? paired_end
    Boolean? verbose
    Int? min_length
    Float? min_quality
    Boolean? print_reads
  }
  command <<<
    fasten_validate \
      ~{if defined(num_cpus) then ("--numcpus " +  '"' + num_cpus + '"') else ""} \
      ~{if (paired_end) then "--paired-end" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(min_quality) then ("--min-quality " +  '"' + min_quality + '"') else ""} \
      ~{if (print_reads) then "--print-reads" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    num_cpus: "Number of CPUs (default: 1)"
    paired_end: "The input reads are interleaved paired-end"
    verbose: "Print more status messages"
    min_length: "Minimum read length allowed"
    min_quality: "Minimum quality allowed"
    print_reads: "Print the reads as they are being validated (useful\\nfor unix pipes)"
  }
  output {
    File out_stdout = stdout()
  }
}