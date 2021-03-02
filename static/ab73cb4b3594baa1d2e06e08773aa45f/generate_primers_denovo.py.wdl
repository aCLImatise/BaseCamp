version 1.0

task GeneratePrimersDenovopy {
  input {
    Boolean? verbose
    File? exclude_fast_a
    Float? percent_match
    Int? full_primer_length
    Int? x_mer_length
    Float? specificity_threshold
    File? log_file
    File? standard_index_file
    Int? search_range
    String? target_seqs
    File? output_file_path
  }
  command <<<
    generate_primers_denovo_py \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(exclude_fast_a) then ("--exclude_fasta " +  '"' + exclude_fast_a + '"') else ""} \
      ~{if defined(percent_match) then ("--percent_match " +  '"' + percent_match + '"') else ""} \
      ~{if defined(full_primer_length) then ("--full_primer_length " +  '"' + full_primer_length + '"') else ""} \
      ~{if defined(x_mer_length) then ("--xmer_length " +  '"' + x_mer_length + '"') else ""} \
      ~{if defined(specificity_threshold) then ("--specificity_threshold " +  '"' + specificity_threshold + '"') else ""} \
      ~{if defined(log_file) then ("--log_file " +  '"' + log_file + '"') else ""} \
      ~{if defined(standard_index_file) then ("--standard_index_file " +  '"' + standard_index_file + '"') else ""} \
      ~{if defined(search_range) then ("--search_range " +  '"' + search_range + '"') else ""} \
      ~{if defined(target_seqs) then ("--target_seqs " +  '"' + target_seqs + '"') else ""} \
      ~{if defined(output_file_path) then ("--output_filepath " +  '"' + output_file_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Print information during execution -- useful for\\ndebugging [default: False]"
    exclude_fast_a: "Excluded aligned fasta file(s).  To pass multiple\\nfiles, separate each file with a colon.  Example: -e\\ntest1.fasta:test2.fasta.  If not specified, will skip\\nexclusion step [default: none]"
    percent_match: "Percentage of sequence matches to primer that must\\nmatch in order to retain prospective sequence in\\ndictionary. [default: 0.6]"
    full_primer_length: "Overall primer length to retrieve from sequences.\\n[default: 20]"
    x_mer_length: "Xmer length to search for in target fasta sequence(s).\\n[default: 5]"
    specificity_threshold: "Sets specificity threshold for excluded fasta\\nsequences. [default: 0.01]"
    log_file: "log filepath. If not specified, no log file will be\\nwritten.  [default: none]"
    standard_index_file: "Aligned sequence file with which to assign prospective\\nprimer indices to.  The alignment where a conserved\\nsequence is found will be used to determine the\\nunaligned index in the supplied file (for instance an\\nE. coli sequence) and will be recorded in the output\\nfile for the purpose of giving a meaningful name to\\nprospective primers.  Only the first sequence in the\\nfile will be used for determining an index [default:\\nnone]"
    search_range: "Range of nucleotides in the supplied aligned target\\nsequences to search for primers.  Supply the starting\\nindex and end index separated by a colon.  Example -r\\n1500:2700  Enable this option to generate primers that\\ntarget certain regions. [default: none]"
    target_seqs: "Target aligned fasta sequence files to find conserved\\nsites for primer design.  Separate multiple files with\\na colon. [REQUIRED]"
    output_file_path: "name of output filepath to write details about\\nconserved sequence sites. [REQUIRED]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_standard_index_file = "${in_standard_index_file}"
    File out_output_file_path = "${in_output_file_path}"
  }
}