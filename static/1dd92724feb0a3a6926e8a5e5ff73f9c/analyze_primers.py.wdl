version 1.0

task AnalyzePrimerspy {
  input {
    Boolean? verbose
    File? primers_file_path
    File? primer_name
    File? primer_sequence
    Directory? output_dir
    Int? three_prime_len
    Int? last_base_mismatch
    Int? three_prime_mismatch
    Float? non_three_prime_mismatch
    Int? three_prime_gap
    Int? non_three_prime_gap
    File? fast_a_seqs
  }
  command <<<
    analyze_primers_py \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(primers_file_path) then ("--primers_filepath " +  '"' + primers_file_path + '"') else ""} \
      ~{if defined(primer_name) then ("--primer_name " +  '"' + primer_name + '"') else ""} \
      ~{if defined(primer_sequence) then ("--primer_sequence " +  '"' + primer_sequence + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(three_prime_len) then ("--three_prime_len " +  '"' + three_prime_len + '"') else ""} \
      ~{if defined(last_base_mismatch) then ("--last_base_mismatch " +  '"' + last_base_mismatch + '"') else ""} \
      ~{if defined(three_prime_mismatch) then ("--three_prime_mismatch " +  '"' + three_prime_mismatch + '"') else ""} \
      ~{if defined(non_three_prime_mismatch) then ("--non_three_prime_mismatch " +  '"' + non_three_prime_mismatch + '"') else ""} \
      ~{if defined(three_prime_gap) then ("--three_prime_gap " +  '"' + three_prime_gap + '"') else ""} \
      ~{if defined(non_three_prime_gap) then ("--non_three_prime_gap " +  '"' + non_three_prime_gap + '"') else ""} \
      ~{if defined(fast_a_seqs) then ("--fasta_seqs " +  '"' + fast_a_seqs + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Print information during execution -- useful for\\ndebugging [default: False]"
    primers_file_path: "Path to input primers file.  This file is tab\\ndelineated, with the first column being the primer\\nname, which must end with an 'f' or a 'r'.  The second\\ncolumn contains the primer sequence in 5' to  3'\\nformat. One must supply either a primer file or a\\nprimer name  (-p parameter) and primer sequence (-s\\nparameter). [default: none]"
    primer_name: "Specify a single primer to analyze.  One can either\\nspecify a single primer that is listed in a primers\\nfile (-P parameter) or  specify a sequence with the -s\\nparameter.  Primer name must end with a \\\"f\\\" or \\\"r\\\" to\\ndesignate orientation. [default: none]"
    primer_sequence: "Primer sequence if using the -p option.  Must be\\nspecified if not passing a primers file with the -P\\noption.  If both -P and -p parameters are passed, the\\nsequence given with this option will be taken rather\\nthan sequences in the -P primers file. [default: none]"
    output_dir: "Specify output directory for hits files and primer\\nsummary graphs. [default: .]"
    three_prime_len: "Length of primer considered to be part of the 3'\\nregion for the purpose of giving a weighted score for\\nmismatches and/or gaps. [default: 5]"
    last_base_mismatch: "Sets penalty for mismatch in final base of 3' end of\\nthe primer. [default: 3]"
    three_prime_mismatch: "Penalty for all 3' mismatches except final\\nbase.[default: 1]"
    non_three_prime_mismatch: "Penalty for all non-3' mismatches. [default: 0.4]"
    three_prime_gap: "Penalty for gaps in the 3' region of the primer.\\n[default: 3]"
    non_three_prime_gap: "Penalty for non 3' gaps. [default: 1]"
    fast_a_seqs: "Target fasta file(s) to score input primer(s) against.\\nSeparate multiple files with a colon. [REQUIRED]\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}