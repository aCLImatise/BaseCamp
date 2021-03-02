version 1.0

task KmerStream {
  input {
    Int? km_er_size
    Int? quality_cut_off
    File? filename_for_output
    Float? error_rate
    Int? threads
    Int? seed
    Boolean? bam
  }
  command <<<
    KmerStream \
      ~{if defined(km_er_size) then ("--kmer-size " +  '"' + km_er_size + '"') else ""} \
      ~{if defined(quality_cut_off) then ("--quality-cutoff " +  '"' + quality_cut_off + '"') else ""} \
      ~{if defined(filename_for_output) then ("--output " +  '"' + filename_for_output + '"') else ""} \
      ~{if defined(error_rate) then ("--error-rate " +  '"' + error_rate + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (bam) then "--bam" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    km_er_size: "Size of k-mers, either a single value or comma separated list"
    quality_cut_off: "Comma separated list, keep k-mers with bases above quality threshold in PHRED (default 0)"
    filename_for_output: "Filename for output"
    error_rate: "Error rate guaranteed (default value 0.01)"
    threads: "SNumber of threads to use (default value 1)"
    seed: "Seed value for the randomness (default value 0, use time based randomness)"
    bam: "Input is in BAM format (default false)\\n--binary             Output is written in binary format (default false)\\n--tsv                Output is written in TSV format (default false)\\n--verbose            Print lots of messages during run\\n--online             Prints out estimates every 100K reads\\n--q64                set if PHRED+64 scores are used (@...h) default used PHRED+33\\n"
  }
  output {
    File out_stdout = stdout()
    File out_filename_for_output = "${in_filename_for_output}"
  }
}