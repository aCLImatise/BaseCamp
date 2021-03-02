version 1.0

task Abyssfac {
  input {
    Int? genome_size
    Int? min_length
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
  }
  command <<<
    abyss_fac \
      ~{if defined(genome_size) then ("--genome-size " +  '"' + genome_size + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{if (jira) then "--jira" else ""} \
      ~{if (mmd) then "--mmd" else ""} \
      ~{if (chastity) then "--chastity" else ""} \
      ~{if (no_chastity) then "--no-chastity" else ""} \
      ~{if (trim_masked) then "--trim-masked" else ""} \
      ~{if (no_trim_masked) then "--no-trim-masked" else ""} \
      ~{if (count_am_big) then "--count-ambig" else ""} \
      ~{if (no_count_am_big) then "--no-count-ambig" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/abyss:2.2.5--ha4ec83a_0"
  }
  parameter_meta {
    genome_size: "expected genome size. Used to calculate NG50\\nand associated stats [disabled]"
    min_length: "ignore sequences shorter than N bp [500]"
    delimiter: "use S for the field delimiter [\\t]"
    jira: "output JIRA format"
    mmd: "output MultiMarkdown format"
    chastity: "discard unchaste sequences [default]"
    no_chastity: "do not discard unchaste sequences"
    trim_masked: "trim masked bases from the end"
    no_trim_masked: "do not trim masked bases from the ends\\nof sequences [default]"
    count_am_big: "count ambiguity codes in sequences"
    no_count_am_big: "do not count ambiguity codes in sequences [default]"
    verbose: "display verbose output"
  }
  output {
    File out_stdout = stdout()
  }
}