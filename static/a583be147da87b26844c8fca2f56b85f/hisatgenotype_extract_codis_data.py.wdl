version 1.0

task HisatgenotypeExtractCodisData.py.bak {
  input {
    String? base
    String? locus_list
    Boolean? verbose
  }
  command <<<
    hisatgenotype_extract_codis_data.py.bak \
      ~{if defined(base) then ("--base " +  '"' + base + '"') else ""} \
      ~{if defined(locus_list) then ("--locus-list " +  '"' + locus_list + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    base: "base filename (default: codis)"
    locus_list: "base filename (default: empty)"
    verbose: "also print some statistics to stderr"
  }
}