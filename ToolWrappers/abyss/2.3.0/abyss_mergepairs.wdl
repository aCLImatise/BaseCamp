version 1.0

task Abyssmergepairs {
  input {
    String? prefix
    Float? identity
    Int? matches
    Int? length_one
    Int? length_two
    Boolean? chastity
    Boolean? no_chastity
    Boolean? trim_masked
    Boolean? no_trim_masked
    String? trim_quality
    Boolean? standard_quality
    Boolean? illumina_quality
    Boolean? verbose
  }
  command <<<
    abyss_mergepairs \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(identity) then ("--identity " +  '"' + identity + '"') else ""} \
      ~{if defined(matches) then ("--matches " +  '"' + matches + '"') else ""} \
      ~{if defined(length_one) then ("--length1 " +  '"' + length_one + '"') else ""} \
      ~{if defined(length_two) then ("--length2 " +  '"' + length_two + '"') else ""} \
      ~{if (chastity) then "--chastity" else ""} \
      ~{if (no_chastity) then "--no-chastity" else ""} \
      ~{if (trim_masked) then "--trim-masked" else ""} \
      ~{if (no_trim_masked) then "--no-trim-masked" else ""} \
      ~{if defined(trim_quality) then ("--trim-quality " +  '"' + trim_quality + '"') else ""} \
      ~{if (standard_quality) then "--standard-quality" else ""} \
      ~{if (illumina_quality) then "--illumina-quality" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/abyss:2.3.0--ha4ec83a_0"
  }
  parameter_meta {
    prefix: "the prefix of all output files [out]"
    identity: "minimum overlap identity [0.9]"
    matches: "minimum number of matches in overlap [10]"
    length_one: "trim bases from 3' end of first read\\ndown to a maximum of N bp long [inf]"
    length_two: "trim bases from 3' end of second read\\ndown to a maximum of N bp long [inf]"
    chastity: "discard unchaste reads [default]"
    no_chastity: "do not discard unchaste reads"
    trim_masked: "trim masked bases from the ends of reads"
    no_trim_masked: "do not trim masked bases from the ends\\nof reads [default]"
    trim_quality: "trim bases from the ends of reads whose\\nquality is less than the threshold"
    standard_quality: "zero quality is `!' (33)\\ndefault for FASTQ and SAM files"
    illumina_quality: "zero quality is `@' (64)\\ndefault for qseq and export files"
    verbose: "display verbose output"
  }
  output {
    File out_stdout = stdout()
  }
}