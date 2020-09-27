version 1.0

task Aav {
  input {
    File? path
    String? build
    File? sample_name
    String? chr_prefix
    File? lookup_table
    File? dump
    File? encoding
    Array[String] exclude_assays
    Boolean? no_ensembl_lookup
    String? log_level
  }
  command <<<
    aav \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""} \
      ~{if defined(build) then ("--build " +  '"' + build + '"') else ""} \
      ~{if defined(sample_name) then ("--sample-name " +  '"' + sample_name + '"') else ""} \
      ~{if defined(chr_prefix) then ("--chr-prefix " +  '"' + chr_prefix + '"') else ""} \
      ~{if defined(lookup_table) then ("--lookup-table " +  '"' + lookup_table + '"') else ""} \
      ~{if defined(dump) then ("--dump " +  '"' + dump + '"') else ""} \
      ~{if defined(encoding) then ("--encoding " +  '"' + encoding + '"') else ""} \
      ~{if defined(exclude_assays) then ("--exclude-assays " +  '"' + exclude_assays + '"') else ""} \
      ~{if (no_ensembl_lookup) then "--no-ensembl-lookup" else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""}
  >>>
  parameter_meta {
    path: "Path to array file (default: None)"
    build: "Genome build (default: GRCh37)"
    sample_name: "Name of sample in VCF file (default: None)"
    chr_prefix: "Prefix to chromosome names (default: None)"
    lookup_table: "Path to existing lookup table for rsIDs (default:\\nNone)"
    dump: "Path to write generated lookup table (default: None)"
    encoding: "Encoding of the array file (default: UTF-8)"
    exclude_assays: "Assay IDs for OpenArray to ignore (default: None)"
    no_ensembl_lookup: "Lookup missing rsIDs on Ensembl (default: False)"
    log_level: "Set the verbosity of the logger (default: INFO)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}