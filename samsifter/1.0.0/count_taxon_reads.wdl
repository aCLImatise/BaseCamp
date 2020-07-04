version 1.0

task CountTaxonReads {
  input {
    String? specify_file_analysed
    String? prefix
    Boolean? verbose
    Boolean? debug
  }
  command <<<
    count_taxon_reads \
      ~{if defined(specify_file_analysed) then ("--input " +  '"' + specify_file_analysed + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    specify_file_analysed: "specify SAM file to be analysed (default: STDIN)"
    prefix: "prefix of temporary statistics files"
    verbose: "print additional information to STDERR"
    debug: "print debug messages to STDERR"
  }
}