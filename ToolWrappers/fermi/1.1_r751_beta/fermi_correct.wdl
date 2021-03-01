version 1.0

task FermiCorrect {
  input {
    Int? kmer_length_auto
    Int? minimum_kmer_occurrences
    Int? number_of_threads
    Float? max_fraction_corrected
    Int? trim_read_bp
    Int? step_size_jumping
    Boolean? keep_badunfixable_reads
    String reads_dot_fmd
    String reads_dot_fq
  }
  command <<<
    fermi correct \
      ~{reads_dot_fmd} \
      ~{reads_dot_fq} \
      ~{if defined(kmer_length_auto) then ("-k " +  '"' + kmer_length_auto + '"') else ""} \
      ~{if defined(minimum_kmer_occurrences) then ("-O " +  '"' + minimum_kmer_occurrences + '"') else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(max_fraction_corrected) then ("-C " +  '"' + max_fraction_corrected + '"') else ""} \
      ~{if defined(trim_read_bp) then ("-l " +  '"' + trim_read_bp + '"') else ""} \
      ~{if defined(step_size_jumping) then ("-s " +  '"' + step_size_jumping + '"') else ""} \
      ~{if (keep_badunfixable_reads) then "-K" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    kmer_length_auto: "k-mer length; -1 for auto [-1]"
    minimum_kmer_occurrences: "minimum (k+1)-mer occurrences [3]"
    number_of_threads: "number of threads [1]"
    max_fraction_corrected: "max fraction of corrected bases [0.30]"
    trim_read_bp: "trim read down to INT bp; 0 to disable [0]"
    step_size_jumping: "step size for the jumping heuristic; 0 to disable [5]"
    keep_badunfixable_reads: "keep bad/unfixable reads"
    reads_dot_fmd: ""
    reads_dot_fq: ""
  }
  output {
    File out_stdout = stdout()
  }
}