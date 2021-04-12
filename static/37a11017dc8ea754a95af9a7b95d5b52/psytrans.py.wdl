version 1.0

task Psytranspy {
  input {
    Int? species_one
    Int? species_two
    String? blast_results
    String? blast_type
    Int? nb_threads
    Int? max_beste_value
    Int? number_of_seq
    Int? min_seq_size
    Int? min_word_size
    Int? max_word_size
    Boolean? both_strands
    Boolean? verbose
    Directory? tempdir
    Directory? outdir
    Boolean? clear_temp
    String? stop_after
    Boolean? restart
  }
  command <<<
    psytrans_py \
      ~{if defined(species_one) then ("--species1 " +  '"' + species_one + '"') else ""} \
      ~{if defined(species_two) then ("--species2 " +  '"' + species_two + '"') else ""} \
      ~{if defined(blast_results) then ("--blastResults " +  '"' + blast_results + '"') else ""} \
      ~{if defined(blast_type) then ("--blastType " +  '"' + blast_type + '"') else ""} \
      ~{if defined(nb_threads) then ("--nbThreads " +  '"' + nb_threads + '"') else ""} \
      ~{if defined(max_beste_value) then ("--maxBestEvalue " +  '"' + max_beste_value + '"') else ""} \
      ~{if defined(number_of_seq) then ("--numberOfSeq " +  '"' + number_of_seq + '"') else ""} \
      ~{if defined(min_seq_size) then ("--minSeqSize " +  '"' + min_seq_size + '"') else ""} \
      ~{if defined(min_word_size) then ("--minWordSize " +  '"' + min_word_size + '"') else ""} \
      ~{if defined(max_word_size) then ("--maxWordSize " +  '"' + max_word_size + '"') else ""} \
      ~{if (both_strands) then "--bothStrands" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(tempdir) then ("--tempDir " +  '"' + tempdir + '"') else ""} \
      ~{if defined(outdir) then ("--outDir " +  '"' + outdir + '"') else ""} \
      ~{if (clear_temp) then "--clearTemp" else ""} \
      ~{if defined(stop_after) then ("--stopAfter " +  '"' + stop_after + '"') else ""} \
      ~{if (restart) then "--restart" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/psytrans:2.0.0--0"
  }
  parameter_meta {
    species_one: "Reference sequences for the first species"
    species_two: "Reference sequences for the second species"
    blast_results: "Blast results obtained"
    blast_type: "Type of blast search to be performed"
    nb_threads: "Number of threads to run the BLAST search and SVM"
    max_beste_value: "Maximum e-value"
    number_of_seq: "Maximum number of sequences for training and testing"
    min_seq_size: "Minimum sequence size for training and testing"
    min_word_size: "Minimum value of DNA word length"
    max_word_size: "Maxmimum value of DNA word length"
    both_strands: "Compute kmers for the forward and reverse strands"
    verbose: "Turn Verbose mode on?"
    tempdir: "Location (prefix) of the temporary directory"
    outdir: "Name of optional output directory"
    clear_temp: "Clear all temporary data upon completion"
    stop_after: "Optional exit upon completion of stage."
    restart: "Continue process from last exit stage"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}