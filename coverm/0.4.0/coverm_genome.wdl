version 1.0

task CovermGenome {
  input {
    String? coupled
    String? genome_definition
    Directory? genome_fast_a_directory
    String? genome_fast_a_files
    String? interleaved
    Int? one
    Int? two
    String? separator
    String? single
    String? contig_end_exclusion
  }
  command <<<
    coverm genome \
      ~{if defined(coupled) then ("--coupled " +  '"' + coupled + '"') else ""} \
      ~{if defined(genome_definition) then ("--genome-definition " +  '"' + genome_definition + '"') else ""} \
      ~{if defined(genome_fast_a_directory) then ("--genome-fasta-directory " +  '"' + genome_fast_a_directory + '"') else ""} \
      ~{if defined(genome_fast_a_files) then ("--genome-fasta-files " +  '"' + genome_fast_a_files + '"') else ""} \
      ~{if defined(interleaved) then ("--interleaved " +  '"' + interleaved + '"') else ""} \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""} \
      ~{if defined(single) then ("--single " +  '"' + single + '"') else ""} \
      ~{if defined(contig_end_exclusion) then ("--contig-end-exclusion " +  '"' + contig_end_exclusion + '"') else ""}
  >>>
  parameter_meta {
    coupled: "..."
    genome_definition: ""
    genome_fast_a_directory: ""
    genome_fast_a_files: "..."
    interleaved: "..."
    one: "..."
    two: "..."
    separator: ""
    single: "..."
    contig_end_exclusion: ""
  }
  output {
    File out_stdout = stdout()
  }
}