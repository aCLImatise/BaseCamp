version 1.0

task MmseqsConvertkb {
  input {
    Boolean? mapping_file
    Boolean? kb_columns
    Boolean? verbosity_level_nothing
    String uniprotkb_file
    String uniprotkb_db
  }
  command <<<
    mmseqs convertkb \
      ~{uniprotkb_file} \
      ~{uniprotkb_db} \
      ~{true="--mapping-file" false="" mapping_file} \
      ~{true="--kb-columns" false="" kb_columns} \
      ~{true="-v" false="" verbosity_level_nothing}
  >>>
  parameter_meta {
    mapping_file: "specify a file that translates the keys of a DB to new keys, TSV format"
    kb_columns: "0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16        list of indices of UniprotKB columns to be extracted        "
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
    uniprotkb_file: ""
    uniprotkb_db: ""
  }
}