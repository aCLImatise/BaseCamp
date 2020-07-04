version 1.0

task QuorumErrorCorrectReads {
  input {
    String? thread
    String? min_count
    String? skip
    String? good
    String? anchor_count
    String? window
    String? error
    String? output_file_prefix
    File? contaminant
    Boolean? trim_contaminant
    Int? homo_trim
    Boolean? gzip
    Boolean? no_mmap
    String? a_priori_error_rate
    String? poisson_threshold
    String? cut_off
    String? qual_cut_off_value
    String? qual_cut_off_char
    Boolean? no_discard
    Boolean? verbose
    String error_correct_reads
    String db
  }
  command <<<
    quorum_error_correct_reads \
      ~{error_correct_reads} \
      ~{db} \
      ~{if defined(thread) then ("--thread " +  '"' + thread + '"') else ""} \
      ~{if defined(min_count) then ("--min-count " +  '"' + min_count + '"') else ""} \
      ~{if defined(skip) then ("--skip " +  '"' + skip + '"') else ""} \
      ~{if defined(good) then ("--good " +  '"' + good + '"') else ""} \
      ~{if defined(anchor_count) then ("--anchor-count " +  '"' + anchor_count + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(error) then ("--error " +  '"' + error + '"') else ""} \
      ~{if defined(output_file_prefix) then ("--output " +  '"' + output_file_prefix + '"') else ""} \
      ~{if defined(contaminant) then ("--contaminant " +  '"' + contaminant + '"') else ""} \
      ~{true="--trim-contaminant" false="" trim_contaminant} \
      ~{if defined(homo_trim) then ("--homo-trim " +  '"' + homo_trim + '"') else ""} \
      ~{true="--gzip" false="" gzip} \
      ~{true="--no-mmap" false="" no_mmap} \
      ~{if defined(a_priori_error_rate) then ("--apriori-error-rate " +  '"' + a_priori_error_rate + '"') else ""} \
      ~{if defined(poisson_threshold) then ("--poisson-threshold " +  '"' + poisson_threshold + '"') else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(qual_cut_off_value) then ("--qual-cutoff-value " +  '"' + qual_cut_off_value + '"') else ""} \
      ~{if defined(qual_cut_off_char) then ("--qual-cutoff-char " +  '"' + qual_cut_off_char + '"') else ""} \
      ~{true="--no-discard" false="" no_discard} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    thread: "Number of threads (1)"
    min_count: "Minimum count for a k-mer to be considered \"good\" (1)"
    skip: "Number of bases to skip for start k-mer (1)"
    good: "Number of good k-mer in a row for anchor (2)"
    anchor_count: "Minimum count for an anchor k-mer (3)"
    window: "Size of window (10)"
    error: "Maximum number of error in a window (3)"
    output_file_prefix: "Output file prefix (error_corrected)"
    contaminant: "Jellyfish database of contaminant k-mers"
    trim_contaminant: "Trim reads containing contaminated k-mers instead of discarding (false)"
    homo_trim: "Trim homo-polymer run at the 3' end"
    gzip: "Gzip output file (false)"
    no_mmap: "Do not memory map the input mer database (false)"
    a_priori_error_rate: "Probability of a base being an error (0.01)"
    poisson_threshold: "Error probability threshold in Poisson test (1.0e-06)"
    cut_off: "Poisson cutoff when there are multiple choices"
    qual_cut_off_value: "Any base above with quality equal or greater is untouched when there are multiple choices"
    qual_cut_off_char: "Any base above with quality equal or greater is untouched when there are multiple choices"
    no_discard: "Do not discard reads, output a single N (false)"
    verbose: "Be verbose (false)"
    error_correct_reads: ""
    db: ""
  }
}