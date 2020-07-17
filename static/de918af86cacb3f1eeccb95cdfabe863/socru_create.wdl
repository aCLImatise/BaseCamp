version 1.0

task SocruCreate {
  input {
    Int? max_bases_from_ends
    String? threads
    String? fragment_order
    String? dna_a_fast_a
    String? dif_fast_a
    Boolean? debug
    Boolean? verbose
    String output_directory
    String input_file
  }
  command <<<
    socru_create \
      ~{output_directory} \
      ~{input_file} \
      ~{if defined(max_bases_from_ends) then ("--max_bases_from_ends " +  '"' + max_bases_from_ends + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(fragment_order) then ("--fragment_order " +  '"' + fragment_order + '"') else ""} \
      ~{if defined(dna_a_fast_a) then ("--dnaa_fasta " +  '"' + dna_a_fast_a + '"') else ""} \
      ~{if defined(dif_fast_a) then ("--dif_fasta " +  '"' + dif_fast_a + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    max_bases_from_ends: "Only look at this number of bases from start and end of fragment (default: None)"
    threads: "No. of threads to use (default: 1)"
    fragment_order: "Order of fragments, you may need to change this, example 1-2-3-4-5-6-7 (default: None)"
    dna_a_fast_a: "Location of dnaA FASTA file, defaults to bundled (default: None)"
    dif_fast_a: "Location of dif FASTA file, defaults to bundled (default: None)"
    debug: "Turn on debugging (default: False)"
    verbose: "Turn on verbose output (default: False)"
    output_directory: "Output directory"
    input_file: "Input FASTA file (optionally gzipped)"
  }
}