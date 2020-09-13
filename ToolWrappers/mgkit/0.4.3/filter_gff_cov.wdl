version 1.0

task FiltergffCov {
  input {
    Boolean? verbose
    File? reference
    Boolean? strand_specific
    Boolean? sorted
    Float? min_coverage
    Boolean? rename
    Boolean? progress
    String? input_file
    String? output_file
  }
  command <<<
    filter_gff cov \
      ~{input_file} \
      ~{output_file} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if (strand_specific) then "--strand-specific" else ""} \
      ~{if (sorted) then "--sorted" else ""} \
      ~{if defined(min_coverage) then ("--min-coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if (rename) then "--rename" else ""} \
      ~{if (progress) then "--progress" else ""}
  >>>
  parameter_meta {
    verbose: ""
    reference: "Reference FASTA file for the GFF  [required]"
    strand_specific: "If the coverage must be calculated on each strand"
    sorted: "Assumes the GFF to be correctly sorted"
    min_coverage: "Minimum coverage for the contig/strand"
    rename: "Emulates BLAST in reading the FASTA file (keeps\\nonly the header before the first space)"
    progress: "Shows Progress Bar"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}