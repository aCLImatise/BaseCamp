version 1.0

task MmseqsPrefixid {
  input {
    Boolean? prefix
    Boolean? mapping_file
    Boolean? tsv
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs prefixid \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (mapping_file) then "--mapping-file" else ""} \
      ~{if (tsv) then "--tsv" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (verbosity_level_nothing) then "-v" else ""}
  >>>
  parameter_meta {
    prefix: "Use this prefix for all entries"
    mapping_file: "specify a file that translates the keys of a DB to new keys, TSV format"
    tsv: "false           should output be in TSV format"
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
  output {
    File out_stdout = stdout()
  }
}