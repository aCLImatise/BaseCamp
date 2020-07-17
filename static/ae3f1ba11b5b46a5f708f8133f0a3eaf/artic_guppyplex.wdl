version 1.0

task ArticGuppyplex {
  input {
    Boolean? quiet
    Directory? directory
    Int? max_length
    Int? min_length
    String? quality
    String? sample
    Boolean? skip_quality_check
    String? prefix
    String? fastq_file_write
  }
  command <<<
    artic guppyplex \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""} \
      ~{if defined(max_length) then ("--max-length " +  '"' + max_length + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(quality) then ("--quality " +  '"' + quality + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{true="--skip-quality-check" false="" skip_quality_check} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(fastq_file_write) then ("--output " +  '"' + fastq_file_write + '"') else ""}
  >>>
  parameter_meta {
    quiet: "Do not output warnings to stderr"
    directory: "Basecalled and demultiplexed (guppy) results directory"
    max_length: "remove reads greater than read length"
    min_length: "remove reads less than read length"
    quality: "remove reads against this quality filter"
    sample: "sampling frequency for random sample of sequence to reduce excess"
    skip_quality_check: "Do not filter on quality score (speeds up)"
    prefix: "Prefix for guppyplex files"
    fastq_file_write: "FASTQ file to write"
  }
}