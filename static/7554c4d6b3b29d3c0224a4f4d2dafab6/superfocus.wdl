version 1.0

task Superfocus {
  input {
    String? query
    String? output_directory
    String? output_prefix
    String? aligner
    Int? minimum_identity
    Int? minimum_alignment
    String? threads
    String? evalue
    String? database
    String? amino_acid
    String? fast
    String? normalise_output
    String? focus
    String? alternate_directory
    Boolean? delete_alignments
    String? log
    Boolean? v
  }
  command <<<
    superfocus \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(output_directory) then ("--output_directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{if defined(minimum_identity) then ("--minimum_identity " +  '"' + minimum_identity + '"') else ""} \
      ~{if defined(minimum_alignment) then ("--minimum_alignment " +  '"' + minimum_alignment + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(amino_acid) then ("--amino_acid " +  '"' + amino_acid + '"') else ""} \
      ~{if defined(fast) then ("--fast " +  '"' + fast + '"') else ""} \
      ~{if defined(normalise_output) then ("--normalise_output " +  '"' + normalise_output + '"') else ""} \
      ~{if defined(focus) then ("--focus " +  '"' + focus + '"') else ""} \
      ~{if defined(alternate_directory) then ("--alternate_directory " +  '"' + alternate_directory + '"') else ""} \
      ~{true="--delete_alignments" false="" delete_alignments} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    query: "Path to FAST(A/Q) file or directory with these files."
    output_directory: "Path to output files"
    output_prefix: "Output prefix (Default: output)."
    aligner: "aligner choice (rapsearch, diamond, or blast; default rapsearch)."
    minimum_identity: "minimum identity (default 60 perc)."
    minimum_alignment: "minimum alignment (amino acids) (default: 15)."
    threads: "Number Threads used in the k-mer counting (Default: 4)."
    evalue: "e-value (default 0.00001)."
    database: "database (DB_90, DB_95, DB_98, or DB_100; default DB_90)"
    amino_acid: "amino acid input; 0 nucleotides; 1 amino acids (default 0)."
    fast: "runs RAPSearch2 or DIAMOND on fast mode - 0 (False) / 1 (True) (default: 1)."
    normalise_output: "normalises each query counts based on number of hits; 0 doesn't normalize; 1 normalizes (default: 1)."
    focus: "runs FOCUS; 1 does run; 0 does not run: default 0."
    alternate_directory: "Alternate directory for your databases."
    delete_alignments: "Delete alignments"
    log: "Path to log file (Default: STDOUT)."
    v: ""
  }
}