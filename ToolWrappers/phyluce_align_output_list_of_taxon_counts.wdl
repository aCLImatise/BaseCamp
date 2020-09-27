version 1.0

task PhyluceAlignOutputListOfTaxonCounts {
  input {
    Directory? fast_as
    String? input_format
    Int? min_count
    Int? cores
  }
  command <<<
    phyluce_align_output_list_of_taxon_counts \
      ~{if defined(fast_as) then ("--fastas " +  '"' + fast_as + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(min_count) then ("--min-count " +  '"' + min_count + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""}
  >>>
  parameter_meta {
    fast_as: "The directory containing fastas to checked. (default:\\nNone)"
    input_format: "The input file format. (default: fasta)"
    min_count: "The min count of taxa allowed in a fasta file\\n(default: 3)"
    cores: "Process alignments in parallel using --cores for\\nalignment. This is the number of PHYSICAL CPUs.\\n(default: 1)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}