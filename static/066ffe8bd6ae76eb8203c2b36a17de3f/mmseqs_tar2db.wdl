version 1.0

task MmseqsTar2db {
  input {
    Int? output_dbtype
    File? tar_include
    File? tar_exclude
    Int? compressed
    Int? threads
    Int? verbosity_level_errors
  }
  command <<<
    mmseqs tar2db \
      ~{if defined(output_dbtype) then ("--output-dbtype " +  '"' + output_dbtype + '"') else ""} \
      ~{if defined(tar_include) then ("--tar-include " +  '"' + tar_include + '"') else ""} \
      ~{if defined(tar_exclude) then ("--tar-exclude " +  '"' + tar_exclude + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    output_dbtype: "Set database type for resulting database: Amino acid sequences 0, Nucl. seq. 1, Profiles 2, Alignment result 5, Clustering result 6, Prefiltering result 7, Taxonomy result 8, Indexed database 9, cA3M MSAs 10, FASTA or A3M MSAs 11, Generic database 12, Omit dbtype file 13, Bi-directional prefiltering result 14, Offsetted headers 15 [12]"
    tar_include: "Include file names based on this regex [.*]"
    tar_exclude: "Exclude file names based on this regex [^$]"
    compressed: "Write compressed output [0]"
    threads: "Number of CPU-cores used (all by default) [2]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
  }
}