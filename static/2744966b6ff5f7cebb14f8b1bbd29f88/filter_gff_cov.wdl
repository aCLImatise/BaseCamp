version 1.0

task FilterGffCov {
  input {
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
    filter-gff cov \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{true="--strand-specific" false="" strand_specific} \
      ~{true="--sorted" false="" sorted} \
      ~{if defined(min_coverage) then ("--min-coverage " +  '"' + min_coverage + '"') else ""} \
      ~{true="--rename" false="" rename} \
      ~{true="--progress" false="" progress}
  >>>
  parameter_meta {
    reference: "Reference FASTA file for the GFF  [required]"
    strand_specific: "If the coverage must be calculated on each strand"
    sorted: "Assumes the GFF to be correctly sorted"
    min_coverage: "Minimum coverage for the contig/strand"
    rename: "Emulates BLAST in reading the FASTA file (keeps only the header before the first space)"
    progress: "Shows Progress Bar"
    input_file: ""
    output_file: ""
  }
}