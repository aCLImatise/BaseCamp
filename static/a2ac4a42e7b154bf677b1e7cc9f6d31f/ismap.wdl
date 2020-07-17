version 1.0

task Ismap.py {
  input {
    Array[String] reads
    Array[String] queries
    Array[String] reference
    String? output_dir
    String? log
    String? help_all
  }
  command <<<
    ismap.py \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if defined(queries) then ("--queries " +  '"' + queries + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(help_all) then ("--help_all " +  '"' + help_all + '"') else ""}
  >>>
  parameter_meta {
    reads: "Paired end reads for analysing (can be gzipped)"
    queries: "Multifasta file for query gene(s) (eg: insertion sequence) that will be mapped to."
    reference: "Reference genome for typing against in genbank format"
    output_dir: "Location for all output files (default is current directory)."
    log: "Prefix for log file. If not supplied, prefix will be current date and time."
    help_all: "Display extended help"
  }
}