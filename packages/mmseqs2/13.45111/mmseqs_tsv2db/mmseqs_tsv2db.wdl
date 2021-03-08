version 1.0

task MmseqsTsv2db {
  input {
    Boolean? add_self_matches
    Int? output_dbtype
    Int? compressed
    Int? verbosity_level_errors
  }
  command <<<
    mmseqs tsv2db \
      ~{if defined(add_self_matches) then ("--add-self-matches " +  '"' + add_self_matches + '"') else ""} \
      ~{if defined(output_dbtype) then ("--output-dbtype " +  '"' + output_dbtype + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    add_self_matches: "Artificially add entries of queries with themselves (for clustering) [0]"
    output_dbtype: "Set database type for resulting database: Amino acid sequences 0, Nucl. seq. 1, Profiles 2, Alignment result 5, Clustering result 6, Prefiltering result 7, Taxonomy result 8, Indexed database 9, cA3M MSAs 10, FASTA or A3M MSAs 11, Generic database 12, Omit dbtype file 13, Bi-directional prefiltering result 14, Offsetted headers 15 [12]"
    compressed: "Write compressed output [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
  }
}