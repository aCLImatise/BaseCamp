version 1.0

task HisatgenotypeExtractCodisDatapy {
  input {
    File? base
    File? locus_list
    Boolean? verbose
  }
  command <<<
    hisatgenotype_extract_codis_data_py \
      ~{if defined(base) then ("--base " +  '"' + base + '"') else ""} \
      ~{if defined(locus_list) then ("--locus-list " +  '"' + locus_list + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    base: "base filename (default: codis)"
    locus_list: "base filename (default: empty)"
    verbose: "also print some statistics to stderr"
  }
  output {
    File out_stdout = stdout()
  }
}