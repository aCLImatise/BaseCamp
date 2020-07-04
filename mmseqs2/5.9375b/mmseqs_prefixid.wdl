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
      ~{true="--prefix" false="" prefix} \
      ~{true="--mapping-file" false="" mapping_file} \
      ~{true="--tsv" false="" tsv} \
      ~{true="--threads" false="" threads} \
      ~{true="-v" false="" verbosity_level_nothing}
  >>>
  parameter_meta {
    prefix: "Use this prefix for all entries                             "
    mapping_file: "specify a file that translates the keys of a DB to new keys, TSV format"
    tsv: "false           should output be in TSV format                              "
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
}