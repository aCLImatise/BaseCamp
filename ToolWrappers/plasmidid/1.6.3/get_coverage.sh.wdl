version 1.0

task GetCoveragesh {
  input {
    File? file_sorted_bam
    Directory? directory_optional
    Int? extract_length_file
    Int? depth_reported_default
    Int? genome_coverage_positions
    String? name
    String? name_optional_unset
    String? usage_message
  }
  command <<<
    get_coverage_sh \
      ~{if defined(file_sorted_bam) then ("-i " +  '"' + file_sorted_bam + '"') else ""} \
      ~{if defined(directory_optional) then ("-o " +  '"' + directory_optional + '"') else ""} \
      ~{if defined(extract_length_file) then ("-d " +  '"' + extract_length_file + '"') else ""} \
      ~{if defined(depth_reported_default) then ("-m " +  '"' + depth_reported_default + '"') else ""} \
      ~{if defined(genome_coverage_positions) then ("-p " +  '"' + genome_coverage_positions + '"') else ""} \
      ~{if defined(name) then ("-s " +  '"' + name + '"') else ""} \
      ~{if defined(name_optional_unset) then ("-g " +  '"' + name_optional_unset + '"') else ""} \
      ~{if defined(usage_message) then ("-v " +  '"' + usage_message + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_sorted_bam: "file in sorted BAM format"
    directory_optional: "directory (optional)"
    extract_length_file: "to extract length. Fasta file used to map against"
    depth_reported_default: "depth reported (default 500)"
    genome_coverage_positions: "genome coverage for all positions in BEDGRAPH format includig 0 positions.\\nDefault option is bedtools genomecov that needs the reference genome"
    name: "name"
    name_optional_unset: "name (optional). If unset, samples will be gathered in NO_GROUP group"
    usage_message: "usage message"
  }
  output {
    File out_stdout = stdout()
  }
}