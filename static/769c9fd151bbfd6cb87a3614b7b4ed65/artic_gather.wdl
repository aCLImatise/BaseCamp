version 1.0

task ArticGather {
  input {
    Boolean? quiet
    Array[Directory] directory
    Int? max_length
    Int? min_length
    String? prefix
    String? prompt_directory
    String? fast_five_directory
    Boolean? no_fast_fives
    String? limit
  }
  command <<<
    artic gather \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""} \
      ~{if defined(max_length) then ("--max-length " +  '"' + max_length + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(prompt_directory) then ("--prompt-directory " +  '"' + prompt_directory + '"') else ""} \
      ~{if defined(fast_five_directory) then ("--fast5-directory " +  '"' + fast_five_directory + '"') else ""} \
      ~{true="--no-fast5s" false="" no_fast_fives} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""}
  >>>
  parameter_meta {
    quiet: "Do not output warnings to stderr"
    directory: "Basecalled (guppy) results directory or directories."
    max_length: "remove reads greater than read length"
    min_length: "remove reads less than read length"
    prefix: "Prefix for gathered files"
    prompt_directory: "The run directory for interactive prompts"
    fast_five_directory: "The directory with fast5 files"
    no_fast_fives: "Do not use fast5s and nanopolish"
    limit: "Only gather n reads"
  }
}