version 1.0

task MinorityFreq {
  input {
    Int? start
    Int? end
    File? config
    Int? minimum_read_depth
    Int? name_patientsample_identifiers
    Int? number_threads_default
    Boolean? freqs
    File? indicates_coverage_be
    Directory? output_directory_default
    File? fasta_file_containing
    String bam
  }
  command <<<
    minority_freq \
      ~{bam} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(end) then ("--end " +  '"' + end + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(minimum_read_depth) then ("-c " +  '"' + minimum_read_depth + '"') else ""} \
      ~{if defined(name_patientsample_identifiers) then ("-N " +  '"' + name_patientsample_identifiers + '"') else ""} \
      ~{if defined(number_threads_default) then ("-t " +  '"' + number_threads_default + '"') else ""} \
      ~{if (freqs) then "--freqs" else ""} \
      ~{if (indicates_coverage_be) then "-d" else ""} \
      ~{if defined(output_directory_default) then ("-o " +  '"' + output_directory_default + '"') else ""} \
      ~{if defined(fasta_file_containing) then ("-r " +  '"' + fasta_file_containing + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/smallgenomeutilities:0.3.2--py_0"
  }
  parameter_meta {
    start: "Starting position of the region of interest, 0-based\\nindexing (default: None)"
    end: "Ending position of the region of interest, 0-based\\nindexing. Note a half-open interval is used, i.e,\\n[start:end) (default: None)"
    config: "Report minority aminoacids - a .config file specifying\\nreading frames expected (default: None)"
    minimum_read_depth: "Minimum read depth for reporting variants per locus\\nand sample (default: 100)"
    name_patientsample_identifiers: ",name2,...    Patient/sample identifiers as comma separated strings\\n(default: None)"
    number_threads_default: "Number of threads (default: 1)"
    freqs: "Indicates whether or not all frequencies should be\\nstored (default: False)"
    indicates_coverage_be: "Indicates whether coverage per locus should be written\\nto output file (default: False)"
    output_directory_default: "Output directory (default: /)"
    fasta_file_containing: "Either a fasta file containing a reference sequence or\\nthe reference name of the region/chromosome of\\ninterest. The latter is expected if a region is\\nspecified (default: None)\\n"
    bam: "BAM file(s)"
  }
  output {
    File out_stdout = stdout()
    File out_indicates_coverage_be = "${in_indicates_coverage_be}"
    Directory out_output_directory_default = "${in_output_directory_default}"
  }
}