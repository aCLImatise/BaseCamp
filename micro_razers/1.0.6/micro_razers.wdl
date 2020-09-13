version 1.0

task MicroRazers {
  input {
    File? change_output_filename
    Int? recognition_rate
    Int? seed_length
    Boolean? seed_error
    Boolean? forward
    Boolean? reverse
    Boolean? match_n
    Int? max_hits
    Boolean? purge_ambiguous
    Boolean? low_memory
    Boolean? verbose
    Boolean? v_verbose
    Boolean? alignment
    Int? genome_naming
    Int? read_naming
    Int? sort_order
    Int? position_format
  }
  command <<<
    micro_razers \
      ~{if defined(change_output_filename) then ("--output " +  '"' + change_output_filename + '"') else ""} \
      ~{if defined(recognition_rate) then ("--recognition-rate " +  '"' + recognition_rate + '"') else ""} \
      ~{if defined(seed_length) then ("--seed-length " +  '"' + seed_length + '"') else ""} \
      ~{if (seed_error) then "--seed-error" else ""} \
      ~{if (forward) then "--forward" else ""} \
      ~{if (reverse) then "--reverse" else ""} \
      ~{if (match_n) then "--match-N" else ""} \
      ~{if defined(max_hits) then ("--max-hits " +  '"' + max_hits + '"') else ""} \
      ~{if (purge_ambiguous) then "--purge-ambiguous" else ""} \
      ~{if (low_memory) then "--low-memory" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (v_verbose) then "--vverbose" else ""} \
      ~{if (alignment) then "--alignment" else ""} \
      ~{if defined(genome_naming) then ("--genome-naming " +  '"' + genome_naming + '"') else ""} \
      ~{if defined(read_naming) then ("--read-naming " +  '"' + read_naming + '"') else ""} \
      ~{if defined(sort_order) then ("--sort-order " +  '"' + sort_order + '"') else ""} \
      ~{if defined(position_format) then ("--position-format " +  '"' + position_format + '"') else ""}
  >>>
  parameter_meta {
    change_output_filename: "Change output filename. (use - to dump to stdout in razers format)\\nDefault: <READS FILE>.razers. Valid filetypes are: .razers and .sam."
    recognition_rate: "set the percent recognition rate In range [80..100]. Default: 100."
    seed_length: "seed length In range [10..inf]. Default: 16."
    seed_error: "allow for one error in the seed"
    forward: "map reads only to forward strands."
    reverse: "map reads only to reverse strands."
    match_n: "'N' matches with all other characters"
    max_hits: "output only NUM of the best hits In range [1..inf]. Default: 100."
    purge_ambiguous: "purge reads with more than max-hits best matches"
    low_memory: "decrease memory usage at the expense of runtime"
    verbose: "verbose mode"
    v_verbose: "very verbose mode"
    alignment: "dump the alignment for each match"
    genome_naming: "Select how genomes are named. 0 = use Fasta id, 1 = enumerate\\nbeginning with 1. In range [0..1]. Default: 0."
    read_naming: "Select how reads are named. 0 = use Fasta id, 1 = enumerate\\nbeginning with 1. In range [0..1]. Default: 0."
    sort_order: "Select how matches are sorted. 0 = read number, 1 = genome position.\\nIn range [0..1]. Default: 0."
    position_format: "Select begin/end position numbering (see Coordinate section below).\\n0 = gap space, 1 = position space. In range [0..1]. Default: 0."
  }
  output {
    File out_stdout = stdout()
    File out_change_output_filename = "${in_change_output_filename}"
  }
}