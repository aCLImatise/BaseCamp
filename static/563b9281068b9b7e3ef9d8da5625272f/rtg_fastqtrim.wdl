version 1.0

task RtgFastqtrim {
  input {
    File? input_fastq_file
    File? output_filename_use
    String? quality_format
    Boolean? discard_empty_reads
    Int? end_quality_threshold
    Int? min_read_length
    Int? start_quality_threshold
    Int? trim_end_bases
    Int? trim_start_bases
    Boolean? no_gzip
    Boolean? reverse_complement
    Int? seed
    Float? subsample
    Int? threads
    String? option
  }
  command <<<
    rtg fastqtrim \
      ~{option} \
      ~{if defined(input_fastq_file) then ("--input " +  '"' + input_fastq_file + '"') else ""} \
      ~{if defined(output_filename_use) then ("--output " +  '"' + output_filename_use + '"') else ""} \
      ~{if defined(quality_format) then ("--quality-format " +  '"' + quality_format + '"') else ""} \
      ~{true="--discard-empty-reads" false="" discard_empty_reads} \
      ~{if defined(end_quality_threshold) then ("--end-quality-threshold " +  '"' + end_quality_threshold + '"') else ""} \
      ~{if defined(min_read_length) then ("--min-read-length " +  '"' + min_read_length + '"') else ""} \
      ~{if defined(start_quality_threshold) then ("--start-quality-threshold " +  '"' + start_quality_threshold + '"') else ""} \
      ~{if defined(trim_end_bases) then ("--trim-end-bases " +  '"' + trim_end_bases + '"') else ""} \
      ~{if defined(trim_start_bases) then ("--trim-start-bases " +  '"' + trim_start_bases + '"') else ""} \
      ~{true="--no-gzip" false="" no_gzip} \
      ~{true="--reverse-complement" false="" reverse_complement} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(subsample) then ("--subsample " +  '"' + subsample + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    input_fastq_file: "input FASTQ file, Use '-' to read from standard input"
    output_filename_use: "output filename. Use '-' to write to standard output"
    quality_format: "quality data encoding method used in FASTQ input files (Illumina 1.8+ uses sanger). Allowed values are [sanger, solexa, illumina] (Default is sanger)"
    discard_empty_reads: "if set, discard reads that have zero length after trimming. Should not be used with paired-end data"
    end_quality_threshold: "trim read ends to maximise base quality above the given threshold (Default is 0)"
    min_read_length: "if a read ends up shorter than this threshold it will be trimmed to zero length (Default is 0)"
    start_quality_threshold: "trim read starts to maximise base quality above the given threshold (Default is 0)"
    trim_end_bases: "always trim the specified number of bases from read end (Default is 0)"
    trim_start_bases: "always trim the specified number of bases from read start (Default is 0)"
    no_gzip: "do not gzip the output"
    reverse_complement: "if set, output in reverse complement"
    seed: "seed used during subsampling"
    subsample: "if set, subsample the input to retain this fraction of reads"
    threads: "number of threads (Default is the number of available cores)"
    option: ""
  }
}