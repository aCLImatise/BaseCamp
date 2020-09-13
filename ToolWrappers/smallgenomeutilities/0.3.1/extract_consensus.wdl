version 1.0

task ExtractConsensus {
  input {
    File? fasta_file_containing
    Int? region_interested_bed
    Int? minimum_read_depth
    Int? minimum_phred_quality
    Float? minimum_frequency_ambiguous
    Int? read_count_reported
    String? patientsample_identifier_default
    Directory? output_directory_default
    File? input_bam_file
  }
  command <<<
    extract_consensus \
      ~{if defined(fasta_file_containing) then ("-f " +  '"' + fasta_file_containing + '"') else ""} \
      ~{if defined(region_interested_bed) then ("-r " +  '"' + region_interested_bed + '"') else ""} \
      ~{if defined(minimum_read_depth) then ("-c " +  '"' + minimum_read_depth + '"') else ""} \
      ~{if defined(minimum_phred_quality) then ("-q " +  '"' + minimum_phred_quality + '"') else ""} \
      ~{if defined(minimum_frequency_ambiguous) then ("-a " +  '"' + minimum_frequency_ambiguous + '"') else ""} \
      ~{if defined(read_count_reported) then ("-n " +  '"' + read_count_reported + '"') else ""} \
      ~{if defined(patientsample_identifier_default) then ("-N " +  '"' + patientsample_identifier_default + '"') else ""} \
      ~{if defined(output_directory_default) then ("-o " +  '"' + output_directory_default + '"') else ""} \
      ~{if defined(input_bam_file) then ("-i " +  '"' + input_bam_file + '"') else ""}
  >>>
  parameter_meta {
    fasta_file_containing: "Fasta file containing the reference sequence (default: None)"
    region_interested_bed: "Region of interested in BED format, e.g. HXB2:2253-3869. Loci\\nare interpreted using 0-based indexing, and a half-open interval\\nis used, i.e, [start:end) (default: None)"
    minimum_read_depth: "Minimum read depth for reporting variants per locus (default:\\n50)"
    minimum_phred_quality: "Minimum phred quality score a base has to reach to be counted\\n(default: 15)"
    minimum_frequency_ambiguous: "Minimum frequency for an ambiguous nucleotide (default: 0.05)"
    read_count_reported: "Read count below which ambiguous base 'n' is reported (default:\\nNone)"
    patientsample_identifier_default: "Patient/sample identifier (default: CONSENSUS)"
    output_directory_default: "Output directory (default: /)"
    input_bam_file: "Input BAM file (default: None)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_default = "${in_output_directory_default}"
  }
}