version 1.0

task AbyssMergepairs {
  input {
    String? prefix
    String? identity
    String? matches
    String? length_one
    String? length_two
    Boolean? chastity
    Boolean? no_chastity
    Boolean? trim_masked
    Boolean? no_trim_masked
    String? trim_quality
    Boolean? standard_quality
    Boolean? illumina_quality
    Boolean? verbose
    String? option
  }
  command <<<
    abyss-mergepairs \
      ~{option} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(identity) then ("--identity " +  '"' + identity + '"') else ""} \
      ~{if defined(matches) then ("--matches " +  '"' + matches + '"') else ""} \
      ~{if defined(length_one) then ("--length1 " +  '"' + length_one + '"') else ""} \
      ~{if defined(length_two) then ("--length2 " +  '"' + length_two + '"') else ""} \
      ~{true="--chastity" false="" chastity} \
      ~{true="--no-chastity" false="" no_chastity} \
      ~{true="--trim-masked" false="" trim_masked} \
      ~{true="--no-trim-masked" false="" no_trim_masked} \
      ~{if defined(trim_quality) then ("--trim-quality " +  '"' + trim_quality + '"') else ""} \
      ~{true="--standard-quality" false="" standard_quality} \
      ~{true="--illumina-quality" false="" illumina_quality} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    prefix: "the prefix of all output files [out]"
    identity: "minimum overlap identity [0.9]"
    matches: "minimum number of matches in overlap [10]"
    length_one: "trim bases from 3' end of first read down to a maximum of N bp long [inf]"
    length_two: "trim bases from 3' end of second read down to a maximum of N bp long [inf]"
    chastity: "discard unchaste reads [default]"
    no_chastity: "do not discard unchaste reads"
    trim_masked: "trim masked bases from the ends of reads"
    no_trim_masked: "do not trim masked bases from the ends of reads [default]"
    trim_quality: "trim bases from the ends of reads whose quality is less than the threshold"
    standard_quality: "zero quality is `!' (33) default for FASTQ and SAM files"
    illumina_quality: "zero quality is `@' (64) default for qseq and export files"
    verbose: "display verbose output"
    option: ""
  }
}