version 1.0

task AbyssFac {
  input {
    String? genome_size
    String? min_length
    String? delimiter
    Boolean? jira
    Boolean? mmd
    Boolean? chastity
    Boolean? no_chastity
    Boolean? trim_masked
    Boolean? no_trim_masked
    Boolean? count_am_big
    Boolean? no_count_am_big
    Boolean? verbose
    String? option
  }
  command <<<
    abyss-fac \
      ~{option} \
      ~{if defined(genome_size) then ("--genome-size " +  '"' + genome_size + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{true="--jira" false="" jira} \
      ~{true="--mmd" false="" mmd} \
      ~{true="--chastity" false="" chastity} \
      ~{true="--no-chastity" false="" no_chastity} \
      ~{true="--trim-masked" false="" trim_masked} \
      ~{true="--no-trim-masked" false="" no_trim_masked} \
      ~{true="--count-ambig" false="" count_am_big} \
      ~{true="--no-count-ambig" false="" no_count_am_big} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    genome_size: "expected genome size. Used to calculate NG50 and associated stats [disabled]"
    min_length: "ignore sequences shorter than N bp [500]"
    delimiter: "use S for the field delimiter [\t]"
    jira: "output JIRA format"
    mmd: "output MultiMarkdown format"
    chastity: "discard unchaste sequences [default]"
    no_chastity: "do not discard unchaste sequences"
    trim_masked: "trim masked bases from the end"
    no_trim_masked: "do not trim masked bases from the ends of sequences [default]"
    count_am_big: "count ambiguity codes in sequences"
    no_count_am_big: "do not count ambiguity codes in sequences [default]"
    verbose: "display verbose output"
    option: ""
  }
}