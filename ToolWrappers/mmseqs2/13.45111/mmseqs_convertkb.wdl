version 1.0

task MmseqsConvertkb {
  input {
    File? mapping_file
    Int? kb_columns
    Int? compressed
    Int? verbosity_level_errors
  }
  command <<<
    mmseqs convertkb \
      ~{if defined(mapping_file) then ("--mapping-file " +  '"' + mapping_file + '"') else ""} \
      ~{if defined(kb_columns) then ("--kb-columns " +  '"' + kb_columns + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    mapping_file: "Specify a file that translates the keys of a DB to new keys, TSV format []"
    kb_columns: "list of indices of UniprotKB columns to be extracted [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]"
    compressed: "Write compressed output [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
  }
}