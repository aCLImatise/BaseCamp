version 1.0

task MinorityFreq {
  input {
    Int? start
    Int? end
    File? config
    Int? minimum_read_depth
    String? name_patientsample_identifiers
    Int? number_threads_default
    Boolean? freqs
    Boolean? indicates_coverage_written
    File? output_directory_default
    String? fasta_file_containing
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
      ~{true="--freqs" false="" freqs} \
      ~{true="-d" false="" indicates_coverage_written} \
      ~{if defined(output_directory_default) then ("-o " +  '"' + output_directory_default + '"') else ""} \
      ~{if defined(fasta_file_containing) then ("-r " +  '"' + fasta_file_containing + '"') else ""}
  >>>
  parameter_meta {
    start: "Starting position of the region of interest, 0-based indexing (default: None)"
    end: "Ending position of the region of interest, 0-based indexing. Note a half-open interval is used, i.e, [start:end) (default: None)"
    config: "Report minority aminoacids - a .config file specifying reading frames expected (default: None)"
    minimum_read_depth: "Minimum read depth for reporting variants per locus and sample (default: 100)"
    name_patientsample_identifiers: ",name2,...    Patient/sample identifiers as comma separated strings (default: None)"
    number_threads_default: "Number of threads (default: 1)"
    freqs: "Indicates whether or not all frequencies should be stored (default: False)"
    indicates_coverage_written: "Indicates whether coverage per locus should be written to output file (default: False)"
    output_directory_default: "Output directory (default: /tmp/tmp0coinnkt)"
    fasta_file_containing: "Either a fasta file containing a reference sequence or the reference name of the region/chromosome of interest. The latter is expected if a region is specified (default: None)"
    bam: "BAM file(s)"
  }
}